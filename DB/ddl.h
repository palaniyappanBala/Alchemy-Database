/*
 * This file implements the DDL SQL commands of AlchemyDatabase
 *

AGPL License

Copyright (c) 2011 Russell Sullivan <jaksprats AT gmail DOT com>
ALL RIGHTS RESERVED 

   This file is part of ALCHEMY_DATABASE

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __A_DDL__H
#define __A_DDL__H

#include "xdb_hooks.h"

#include "dict.h"
#include "redis.h"

#include "common.h"

void v_sdsfree(void *v);

void createCommand   (redisClient *c);
void dropCommand     (redisClient *c);
void alterCommand    (redisClient *c);

void initTable(r_tbl_t *rt);

void addColumn(int tmatch, char *cname, int ctype);
ulong emptyTable(cli *c, int tmatch);

#endif /*__A_DDL__H */ 
