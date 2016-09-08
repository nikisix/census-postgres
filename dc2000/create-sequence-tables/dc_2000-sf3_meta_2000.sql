CREATE TABLE IF NOT EXISTS dc2000.meta_sf3 (
    linenumber integer  NOT NULL,
    table_num character varying(10)  NOT NULL,
    fieldnum character varying(10)  NOT NULL,
    tabno character varying(10)  NOT NULL,
    text_text character varying(200)  NOT NULL,
    char_size character varying(2)  NOT NULL,
    seg character varying(2)  NOT NULL,
    decimal_size character varying(1)  NOT NULL);
