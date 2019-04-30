Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8B6991005F
	for <lists+linux-man@lfdr.de>; Tue, 30 Apr 2019 21:37:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbfD3ThA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Apr 2019 15:37:00 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:46186 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726015AbfD3ThA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Apr 2019 15:37:00 -0400
Received: by mail-lj1-f194.google.com with SMTP id h21so13857479ljk.13
        for <linux-man@vger.kernel.org>; Tue, 30 Apr 2019 12:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=1XDbbgTKh9qySB1D4roTqX6OJKt0g/8X9LjiKycdgSg=;
        b=XKtqdf0Y7mB0/IZR476lpLpo7YMokYHLC266s1etZqASSGh0VcvkSL5PlI2e6BdEPF
         ZbZaGUo6lvA4f3xqWm4wiAnSTTLKWyzPFiD4l2ntyWmnvOxoO9Zab5WMkZA1KK1ecO7q
         oZHbr21FKlEzAfW93+IYjbfN0vDWVIZX6W/xAF5yHuV9VzDyUpTQFFZOcHkjTvoFwW83
         Vurc4OALZZLWn/nrGgR3fKQvsJ3pBX+1KKco46NdWAZQ29Wx4T/E6mmxxxRkbyiTBu54
         LwqTvF9xmkpErA1z+U8mMyESvpW0yKlOFtMyG4KODBXALIK7laiTNZxbJAOblEf5UzEi
         iEtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=1XDbbgTKh9qySB1D4roTqX6OJKt0g/8X9LjiKycdgSg=;
        b=Exue5tZhBO/mkNpMM+vAhPEGGVmxKGagXrBJt3bwYlZfnhcDV4+QPP5VcJPR+TQ16g
         Ud1ZZisROzBlmc51V6KQPU4+zuPRC7d73XgSxbSbIRwwtq6Pqi07VbTwbxf2srmJHzDz
         KPAlvKb7zo7PIkOpATkVugYXp7knA3+BNO3+VimgyAGWWXGsuBET9OpOh/W5o0SAscK3
         C8tqPjVSoJRBQp715Z1oC3oFrBXswEuLmJKlIeY78iP9e5VAMQt5GweULt3eQBWqdnjt
         hoV1SQ2FHgJGqpOVGIQ4WzdDq8MA/FjzEMlpJhIGHPsIrimV/7DtJi0u1DgF85YAQZNb
         ef2g==
X-Gm-Message-State: APjAAAWca7dvpw59pekucDaURZ4l3tz5hzcsdAp8Ot0J12HLnESk5sJD
        geRHog4eL95F9WVxDF7zMzle5hU9kBYp/wUA2/LnqM5yGkih3w==
X-Google-Smtp-Source: APXvYqwIQnwhb1se1+m5L7NLdhbDS/5Rr4gzy7Brm5PQCiIkgqcS9QqevD2XQVfXyNDk1RQjUTsEcUJiJBt96V+ZI+o=
X-Received: by 2002:a2e:7c0f:: with SMTP id x15mr23415372ljc.154.1556653017805;
 Tue, 30 Apr 2019 12:36:57 -0700 (PDT)
MIME-Version: 1.0
From:   enh <enh@google.com>
Date:   Tue, 30 Apr 2019 12:36:46 -0700
Message-ID: <CAJgzZoo37xEyOdQcbevR3wce6=8kNtEu0+DQ82M8LQiqfCnEOw@mail.gmail.com>
Subject: [PATCH] mallinfo.3: discourage use.
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000002ab3cc0587c4868a"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000002ab3cc0587c4868a
Content-Type: text/plain; charset="UTF-8"

The BUGS section already explains why you need to be cautious about
using mallinfo, but given the number of bug reports we see on Android,
it seems not many people are reading that far. Call it out up front.
---
 man3/mallinfo.3 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man3/mallinfo.3 b/man3/mallinfo.3
index 0cf773882..677a9a1cf 100644
--- a/man3/mallinfo.3
+++ b/man3/mallinfo.3
@@ -37,7 +37,14 @@ function returns a copy of a structure containing
information about
 memory allocations performed by
 .BR malloc (3)
 and related functions.
-This structure is defined as follows:
+.PP
+Note that not all allocations are visible to
+.BR mallinfo ();
+see BUGS and consider using
+.BR malloc_info (3)
+instead.
+.PP
+The returned structure is defined as follows:
 .PP
 .in +4n
 .EX
-- 
2.21.0.1020.gf2820cf01a-goog

--0000000000002ab3cc0587c4868a
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-mallinfo.3-discourage-use.patch"
Content-Disposition: attachment; 
	filename="0001-mallinfo.3-discourage-use.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jv46zokl0>
X-Attachment-Id: f_jv46zokl0

RnJvbSBkM2Q2YzM5ODM3Nzk2ODI2ZWE5MTM4YWJhNjQ4NGQ2MzliMThhOGU3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IFR1ZSwgMzAgQXByIDIwMTkgMTI6Mjg6MjMgLTA3MDAKU3ViamVjdDogW1BBVENIXSBtYWxsaW5m
by4zOiBkaXNjb3VyYWdlIHVzZS4KClRoZSBCVUdTIHNlY3Rpb24gYWxyZWFkeSBleHBsYWlucyB3
aHkgeW91IG5lZWQgdG8gYmUgY2F1dGlvdXMgYWJvdXQKdXNpbmcgbWFsbGluZm8sIGJ1dCBnaXZl
biB0aGUgbnVtYmVyIG9mIGJ1ZyByZXBvcnRzIHdlIHNlZSBvbiBBbmRyb2lkLAppdCBzZWVtcyBu
b3QgbWFueSBwZW9wbGUgYXJlIHJlYWRpbmcgdGhhdCBmYXIuIENhbGwgaXQgb3V0IHVwIGZyb250
LgotLS0KIG1hbjMvbWFsbGluZm8uMyB8IDkgKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMy9tYWxsaW5mby4z
IGIvbWFuMy9tYWxsaW5mby4zCmluZGV4IDBjZjc3Mzg4Mi4uNjc3YTlhMWNmIDEwMDY0NAotLS0g
YS9tYW4zL21hbGxpbmZvLjMKKysrIGIvbWFuMy9tYWxsaW5mby4zCkBAIC0zNyw3ICszNywxNCBA
QCBmdW5jdGlvbiByZXR1cm5zIGEgY29weSBvZiBhIHN0cnVjdHVyZSBjb250YWluaW5nIGluZm9y
bWF0aW9uIGFib3V0CiBtZW1vcnkgYWxsb2NhdGlvbnMgcGVyZm9ybWVkIGJ5CiAuQlIgbWFsbG9j
ICgzKQogYW5kIHJlbGF0ZWQgZnVuY3Rpb25zLgotVGhpcyBzdHJ1Y3R1cmUgaXMgZGVmaW5lZCBh
cyBmb2xsb3dzOgorLlBQCitOb3RlIHRoYXQgbm90IGFsbCBhbGxvY2F0aW9ucyBhcmUgdmlzaWJs
ZSB0bworLkJSIG1hbGxpbmZvICgpOworc2VlIEJVR1MgYW5kIGNvbnNpZGVyIHVzaW5nCisuQlIg
bWFsbG9jX2luZm8gKDMpCitpbnN0ZWFkLgorLlBQCitUaGUgcmV0dXJuZWQgc3RydWN0dXJlIGlz
IGRlZmluZWQgYXMgZm9sbG93czoKIC5QUAogLmluICs0bgogLkVYCi0tIAoyLjIxLjAuMTAyMC5n
ZjI4MjBjZjAxYS1nb29nCgo=
--0000000000002ab3cc0587c4868a--
