Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD07924E952
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 21:10:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728611AbgHVTJ7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 15:09:59 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:14064 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728398AbgHVTJz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 22 Aug 2020 15:09:55 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id EBE4220303
        for <linux-man@vger.kernel.org>; Sat, 22 Aug 2020 21:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1598123392;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=6OhnS+PQlLdt9pCs/f4peGRo6hgzbZsi4VK/oh60hhs=;
        b=0Sbd+zd70BN441Aa5ij9qqsQMfuoET7Z1VKYb9K69Kv+dmQp3fQGUip7DPYn495zW/rotA
        hAiU1GHCUG2r9KbENmY+mvlbH5kDojvUIPMcLQSXsMhfBpLe0NGFde7VHifbnk4X2Mlq9r
        wk4uzynvpFzssrrWniS0Gand8yQo8CkzeeQvGJJMZ2b/SxWRLmxA/HV2rEFFqKR8wqfDT4
        nVdR8WB666VjnNWwHYYHB26qrYgnCIk07ljkp4KAJK0czzej/qtQNXn7FaiizqyPpI7/vt
        snPTc6VW2Amn3IutoTVG8cOVGHqx+JSn8FebdBvdfXmG6HE1ICskQMcEAMLynQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Sat, 22 Aug
 2020 21:09:51 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Sat, 22 Aug 2020 21:09:51 +0200
From:   Walter Harms <wharms@bfs.de>
To:     linux-man <linux-man@vger.kernel.org>
Subject: beta-tester for insque.c needed
Thread-Topic: beta-tester for insque.c needed
Thread-Index: AQHWeKbMDPdnwJrKPkqguj4nw3hRPg==
Date:   Sat, 22 Aug 2020 19:09:51 +0000
Message-ID: <185f510eee65464f8fd8deeb9b4689e0@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25620.002
x-tm-as-result: No-10--5.287600-5.000000
x-tmase-matchedrid: 6yXf2grjkv/RubRCcrbc5pzEHTUOuMX33dCmvEa6IiGoLZarzrrPmcZz
        CC0RExuZeaa+M+QbKhVTMlllQTFW8ba+UQqsuMYYiJwEp8weVXwh5ozUsuASImWCfbzydb0gaku
        BjIoLWyf9VAfQOqUygrI7zVffJqTzUynTI57As0JaHOMn1y2oVepQisROQz3+11Y4mi2dy32TKl
        KOZ1pI837cGd19dSFd
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--5.287600-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25620.002
x-tm-snts-smtp: 78B6C43A82140E065A53A69F21AEDFD7FB835F9A1E0946C5F01F336A1B3360632000:9
Content-Type: multipart/mixed;
        boundary="_002_185f510eee65464f8fd8deeb9b4689e0bfsde_"
MIME-Version: 1.0
X-Spam-Status: No, score=2.64
X-Spam-Level: **
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [2.64 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-csrc];
         MIME_BAD_ATTACHMENT(1.60)[c];
         MIME_BASE64_TEXT_BOGUS(1.00)[];
         RCPT_COUNT_ONE(0.00)[1];
         HAS_ATTACHMENT(0.00)[];
         DKIM_SIGNED(0.00)[];
         TO_DN_ALL(0.00)[];
         MIME_BASE64_TEXT(0.10)[];
         NEURAL_HAM(-0.00)[-0.549];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+,1:+,2:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.06)[61.68%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--_002_185f510eee65464f8fd8deeb9b4689e0bfsde_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi List,
i rewrote the example from insque.3
the code now uses a zero-size array and
has a demo for remque.

i need some feedback if that is working perhaps
with other libc version than glibc. (note i tested on=20
arm and x86_64).

cu,
 wh

--_002_185f510eee65464f8fd8deeb9b4689e0bfsde_
Content-Type: text/x-csrc; name="insque.c"
Content-Description: insque.c
Content-Disposition: attachment; filename="insque.c"; size=1856;
	creation-date="Sat, 22 Aug 2020 17:53:00 GMT";
	modification-date="Sat, 22 Aug 2020 17:53:00 GMT"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHVuaXN0ZC5o
PgojaW5jbHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxzZWFyY2guaD4KCnN0cnVjdCBlbGVtZW50
IHsKCXN0cnVjdCBlbGVtZW50ICpmb3J3YXJkOwoJc3RydWN0IGVsZW1lbnQgKmJhY2t3YXJkOwoJ
Y2hhciBwYXlsb2FkW107Cn07CgpzdGF0aWMgc3RydWN0IGVsZW1lbnQgKm5ld19lbGVtZW50KGNo
YXIgKmFyZykKewoJc3RydWN0IGVsZW1lbnQgKmU7CgoJZSA9IGNhbGxvYyhzaXplb2Yoc3RydWN0
IGVsZW1lbnQpKzErc3RybGVuKGFyZyksMSk7CglpZiAoZSA9PSBOVUxMKSB7CgkJZnByaW50Zihz
dGRlcnIsICJtYWxsb2MoKSBmYWlsZWRcbiIpOwoJCWV4aXQoRVhJVF9GQUlMVVJFKTsKCX0KCXN0
cmNweShlLT5wYXlsb2FkLGFyZyk7CglyZXR1cm4gZTsKfQoKaW50IG1haW4oaW50IGFyZ2MsIGNo
YXIgKmFyZ3ZbXSkKewoJc3RydWN0IGVsZW1lbnQgKmZpcnN0LCAqZWxlbSwgKnByZXY7CglpbnQg
Y2lyY3VsYXIsIG9wdCwgZXJyZm5kOwoKCS8qIFRoZSAiLWMiIGNvbW1hbmQtbGluZSBvcHRpb24g
Y2FuIGJlIHVzZWQgdG8gc3BlY2lmeSB0aGF0IHRoZQoJICAgbGlzdCBpcyBjaXJjdWxhciAqLwoK
CWVycmZuZCA9IDA7CgljaXJjdWxhciA9IDA7Cgl3aGlsZSAoKG9wdCA9IGdldG9wdChhcmdjLCBh
cmd2LCAiYyIpKSAhPSAtMSkgewoJCXN3aXRjaCAob3B0KSB7CgkJY2FzZSAnYyc6CgkJCWNpcmN1
bGFyID0gMTsKCQkJYnJlYWs7CgkJZGVmYXVsdDoKCQkJZXJyZm5kID0gMTsKCQkJYnJlYWs7CgkJ
fQoJfQoKCWlmIChlcnJmbmQgfHwgb3B0aW5kID49IGFyZ2MpIHsKCQlmcHJpbnRmKHN0ZGVyciwg
IlVzYWdlOiAlcyBbLWNdIHN0cmluZy4uLlxuIiwgYXJndlswXSk7CgkJZXhpdChFWElUX0ZBSUxV
UkUpOwoJfQoKCS8qIENyZWF0ZSBmaXJzdCBlbGVtZW50IGFuZCBwbGFjZSBpdCBpbiB0aGUgbGlu
a2VkIGxpc3QgKi8KCgllbGVtID0gbmV3X2VsZW1lbnQoYXJndltvcHRpbmRdKTsKCWZpcnN0ID0g
ZWxlbTsKCglpZiAoY2lyY3VsYXIpIHsKCQllbGVtLT5mb3J3YXJkID0gZWxlbTsKCQllbGVtLT5i
YWNrd2FyZCA9IGVsZW07CgkJaW5zcXVlKGVsZW0sIGVsZW0pOwoJfSBlbHNlIHsKCQlpbnNxdWUo
ZWxlbSwgTlVMTCk7Cgl9CgoJLyogQWRkIHJlbWFpbmluZyBjb21tYW5kLWxpbmUgYXJndW1lbnRz
IGFzIGxpc3QgZWxlbWVudHMgKi8KCgl3aGlsZSAoKytvcHRpbmQgPCBhcmdjKSB7CgkJcHJldiA9
IGVsZW07CgkJZWxlbSA9IG5ld19lbGVtZW50KGFyZ3Zbb3B0aW5kXSk7CgkJaW5zcXVlKGVsZW0s
IHByZXYpOwoJfQoKCS8qIFRyYXZlcnNlIHRoZSBsaXN0IGZyb20gdGhlIHN0YXJ0LCBwcmludGlu
ZyBlbGVtZW50IG5hbWVzICovCgoJcHJpbnRmKCJUcmF2ZXJzaW5nIGNvbXBsZXRlZCBsaXN0Olxu
Iik7CgllbGVtID0gZmlyc3Q7CglkbyB7CgkJcHJpbnRmKCIgICAgICVzXG4iLCBlbGVtLT5wYXls
b2FkKTsKCQllbGVtID0gZWxlbS0+Zm9yd2FyZDsKCX0gd2hpbGUgKGVsZW0gIT0gTlVMTCAmJiBl
bGVtICE9IGZpcnN0KTsKCglpZiAoZWxlbSA9PSBmaXJzdCkKCQlwcmludGYoIlRoYXQgd2FzIGEg
Y2lyY3VsYXIgbGlzdFxuIik7CgoJZWxlbT1maXJzdDsKCWRvIAoJewoJCXN0cnVjdCBlbGVtZW50
ICpuZXh0OwoJCW5leHQ9IGVsZW0tPmZvcndhcmQ7CgkJcHJpbnRmKCJmcmVlICVzXG4iLCBlbGVt
LT5wYXlsb2FkKTsKCQlyZW1xdWUoZWxlbSk7CgkJZnJlZShlbGVtKTsKCQlpZiAoY2lyY3VsYXIg
JiYgZWxlbT09bmV4dCApIAoJCQlicmVhazsKCQllbGVtPW5leHQ7Cgl9IHdoaWxlIChlbGVtICE9
IE5VTEwgKTsKCWV4aXQoRVhJVF9TVUNDRVNTKTsKfQo=

--_002_185f510eee65464f8fd8deeb9b4689e0bfsde_--
