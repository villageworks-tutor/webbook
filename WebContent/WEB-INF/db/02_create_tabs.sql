-- テーブルの初期化（全削除）
DROP TABLE IF EXISTS category       CASCADE;
DROP TABLE IF EXISTS privilege      CASCADE;
DROP TABLE IF EXISTS publisher      CASCADE;
DROP TABLE IF EXISTS member         CASCADE;
DROP TABLE IF EXISTS book_catalogue CASCADE;
DROP TABLE IF EXISTS book_ledger    CASCADE;
DROP TABLE IF EXISTS activity_logs  CASCADE;
DROP TABLE IF EXISTS reserve        CASCADE;
DROP TABLE IF EXISTS auth           CASCADE;

/** コードマスタの生成 */
/**********************************/
/* テーブル名: 分類マスタ */
/**********************************/
CREATE TABLE category (
  code SMALLINT NOT NULL UNIQUE,
  name VARCHAR(20)
);
ALTER TABLE category ADD CONSTRAINT pk_category PRIMARY KEY (code);

/**********************************/
/* テーブル名: 権限マスタ */
/**********************************/
CREATE TABLE privilege (
  code SMALLINT NOT NULL UNIQUE,
  name VARCHAR(20)
);
ALTER TABLE privilege ADD CONSTRAINT pk_privilege PRIMARY KEY (code);

/**********************************/
/* テーブル名: 出版社マスタ */
/**********************************/
CREATE TABLE publisher (
  code    VARCHAR(8) NOT NULL UNIQUE,
  name    VARCHAR(50) NOT NULL,
  address VARCHAR(100)
);
ALTER TABLE publisher ADD CONSTRAINT pk_publisher PRIMARY KEY (code);

/** マスタテーブルの生成 */
/**********************************/
/* テーブル名: 利用者マスタ */
/**********************************/
CREATE TABLE member (
	id					SERIAL,	-- シーケンス「member_id_seq」として参照する
	card				CHAR(8) UNIQUE,
	name				VARCHAR(10) NOT NULL,
	zipcode		 	CHAR(8),
	address		 	VARCHAR(100),
	phone			 	VARCHAR(14),
	email				VARCHAR(100),
	birthday		DATE,
	privilege	SMALLINT,
	signup_at	 	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at	TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	erasured_at TIMESTAMP
);
ALTER TABLE member ADD CONSTRAINT pk_member PRIMARY KEY (id);
ALTER TABLE member ADD CONSTRAINT fk_member FOREIGN KEY (privilege) REFERENCES privilege (code);

/**********************************/
/* テーブル名: 資料目録 */
/**********************************/
CREATE TABLE book_catalogue (
	id 						SERIAL,	-- シーケンス「book_catalog_id_seq」として参照する
	isbn 					CHAR(13) UNIQUE,
	category 			SMALLINT,
	title 				VARCHAR(200),
	author 				VARCHAR(100),
	publisher_cd 	VARCHAR(8),
	published_at 	DATE,
	signup_at	 		TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at		TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	erasured_at 	TIMESTAMP
);
ALTER TABLE book_catalogue ADD CONSTRAINT pk_catalogue PRIMARY KEY (id);
ALTER TABLE book_catalogue ADD CONSTRAINT fk_catalogue_category FOREIGN KEY (category) REFERENCES category (code);
ALTER TABLE book_catalogue ADD CONSTRAINT fk_catalogue_publisher FOREIGN KEY (publisher_cd) REFERENCES publisher (code);

/**********************************/
/* テーブル名: 資料台帳 */
/**********************************/
CREATE TABLE book_ledger (
	id 						SERIAL,	-- シーケンス「book_ledger_id_seq」として参照する
	catalogue_id 	INTEGER,
	arraival_at 	DATE,
	disposal_at 	DATE,
	description 	VARCHAR(255)
);
ALTER TABLE book_ledger ADD CONSTRAINT pk_ledger PRIMARY KEY (id);
ALTER TABLE book_ledger ADD CONSTRAINT fk_ledger FOREIGN KEY (catalogue_id) REFERENCES book_catalogue (id);

/**********************************/
/* テーブル名: 貸出台帳 */
/**********************************/
CREATE TABLE activity_logs (
	id 					SERIAL,	-- シーケンス「activity_logs_id_seq」として参照する
	uid 				INTEGER NOT NULL,
	book_id 		INTEGER,
	borrow_at 	DATE NOT NULL DEFAULT CURRENT_DATE,
	return_at 	DATE,
	due_date 		DATE,
	description VARCHAR(255)
);
ALTER TABLE activity_logs ADD CONSTRAINT pk_activity_logs PRIMARY KEY (id);
ALTER TABLE activity_logs ADD CONSTRAINT fk_activity_logs FOREIGN KEY (uid) REFERENCES member (id);

/**********************************/
/* テーブル名: 予約台帳 */
/**********************************/
CREATE TABLE reserve (
	id 					 SERIAL,	-- シーケンス「resserve_id_seq」として参照する
	uid 				 INTEGER,
	book_id 		 INTEGER,
	reserved_at  DATE,
	status 			 SMALLINT,
	description VARCHAR(255)
);

/**********************************/
/* テーブル名: 予約台帳 */
/**********************************/
CREATE TABLE auth (
	id 				    SERIAL,	-- シーケンス「auth_id_seq」として参照する
	card 			    CHAR(8) UNIQUE NOT NULL,
	privilege     SMALLINT NOT NULL,
	password 	    CHAR(64) NOT NULL,
	signup_at	 		TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at		TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	erasured_at 	TIMESTAMP
);
ALTER TABLE auth ADD CONSTRAINT pk_auth PRIMARY KEY (id);
ALTER table auth ADD CONSTRAINT fk_auth_privilege FOREIGN KEY (privilege) REFERENCES privilege (code);
ALTER TABLE auth ADD CONSTRAINT fk_auth_card FOREIGN KEY (card) REFERENCES member (card);
--ALTER TABLE auth ADD CONSTRAINT unique_sigin_in UNIQUE (signin_id, password);	-- ユーザIDとパスワードの組み合わせは一意である必要がある
