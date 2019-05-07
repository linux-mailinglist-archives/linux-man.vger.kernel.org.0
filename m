Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 678041631F
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2019 13:54:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726437AbfEGLyO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 May 2019 07:54:14 -0400
Received: from mail-it1-f196.google.com ([209.85.166.196]:56212 "EHLO
        mail-it1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726412AbfEGLyO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 May 2019 07:54:14 -0400
Received: by mail-it1-f196.google.com with SMTP id q132so10639374itc.5
        for <linux-man@vger.kernel.org>; Tue, 07 May 2019 04:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Wd9Czb/pgWuirVy25BWHh57JiJY5AUevekXlkewYHuM=;
        b=ihjROekzY5EBNcd7bYSAvwl3nfJzUasZPBU+fL5s6WDBIy247g4WSzhhCdHnmHF1ih
         OkjMnQNWK4PpgTq1vG3lsxXfaBl+Vpv1hdG1veB/GarUMSABi/njbzJkUjYo5/GBixr6
         VZFPsiknQPAfo+LjId187ZY8HbXaV6+RuidJ9NkK727kTQzKkR1psW4jzektrCX2JHAt
         j6W79yIOQJKzrh2MMoFtWkf1Py8s81zhSfu5BuarrPf19ovCNwDofjmOKPE9oSQE5UZF
         FDE1BfsuypvQ6z5JCDNXBqwoM/GjVDYsYYQfg5eKd6x0ltQRmSs5zLABgsIaODTyJ5UY
         7LaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Wd9Czb/pgWuirVy25BWHh57JiJY5AUevekXlkewYHuM=;
        b=I2i/QBCit5hM8eHCyNTzHt5pVhgbN9LWaKp63Zd+waDEhrCmwP+TUgljtVEM26EqJw
         yoN7DPupQyOUl3+L1Mxd1ScjV34o0jLgZ3UgG9QgJBz+3gt1XKkPYJhAjO/OpLcUxmSN
         x0SWUkfT1ldOoGA2UV/X41L9b9ZNepJbyw7CAOmCD2FzC8S/D4eLzqrxWRMXOjORixFx
         xX1QTP7noqeCB77E6bKDkL19ZgOIO5aE5x04hXzP4trJkmY3OQdDNn29X+rEYckS4rcs
         Ze1TPX2T4KZVsyVj+S0oiVBdDAOUwi//kB4EkNisa96S3Cd4lwVO4cRywP9Ck9V6p7NS
         LnTg==
X-Gm-Message-State: APjAAAVvoFelG/pviVmqu7bzuNaaMnL/P48JcIlC6rax2eJ4Q/AxU81e
        1ySBXUGBtc+dJzjHRSv3YXfPTynZ4PG7V6J8L3IDdyDFoR8=
X-Google-Smtp-Source: APXvYqzQVyaMyZL8Vrimvx3AGmKANSSGMjnEcjNPqRlDXFKLBQw1pVo4hZdz9r9bFE/7gZpGm1HOSIyfh2GU0XdeG+M=
X-Received: by 2002:a24:39d2:: with SMTP id l201mr6778678ita.67.1557230053521;
 Tue, 07 May 2019 04:54:13 -0700 (PDT)
MIME-Version: 1.0
From:   Francesco Sanesi <francesco.sanesi@gmail.com>
Date:   Tue, 7 May 2019 13:54:02 +0200
Message-ID: <CAG+x03ByjP2jdimjENgnOsNMwHgpgCVv==Fna_aLhj_d7Eh+ZA@mail.gmail.com>
Subject: [patch] awk.1p: tilde rendered as " " in man page and online HTML page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000002cc82605884ae093"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000002cc82605884ae093
Content-Type: text/plain; charset="UTF-8"

In awk's POSIX documentation,
both online at:
http://man7.org/linux/man-pages/man1/awk.1p.html
and in the awk(1p) man page:
man-pages-posix-2013-a/man1p/awk.1p
bundled in the archive man-pages-posix-2013-a.tar.xz downloaded from:
https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
some instances of '~' (tilde) have been rendered as ' " " ' (space -
double quotes - space - double quotes - space).

Referring to man-pages-posix-2013-a/man1p/awk.1p, these instances are
fixed in the attached patch.
It has been created with plain "git diff". Since I was not able to
find any SCM repository for the POSIX man pages, the commits it refers
to are obviously not meaningful (I created a local git repository to
test "git diff" and "git apply").

The list of fixes has been determined comparing the above documents
with "The Open Group Base Specifications Issue 7, IEEE Std 1003.1,
2013 Edition" at
http://pubs.opengroup.org/onlinepubs/9699919799.2013edition/utilities/awk.html

Thank you for your great job.
Best regards.

Francesco Sanesi

--0000000000002cc82605884ae093
Content-Type: text/x-patch; charset="US-ASCII"; name="awk.1p.patch"
Content-Disposition: attachment; filename="awk.1p.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jvdqascu0>
X-Attachment-Id: f_jvdqascu0

ZGlmZiAtLWdpdCBhL2F3ay4xcCBiL2F3ay4xcAppbmRleCA4YTY3YTJmLi4wOGZkM2RjIDEwMDY0
NAotLS0gYS9hd2suMXAKKysrIGIvYXdrLjFwCkBAIC0xMjQxLDcgKzEyNDEsNyBAQCB0aGUgdmFs
dWUgb2YgdGhlIHJlc3VsdGluZyBleHByZXNzaW9uIHNoYWxsIGJlIHRoZSBlcXVpdmFsZW50IG9m
OgogLlJTIDQKIC5uZgogXGZCCi0kMCAgIiAiICAvXGZJZXJlXGZSLworJDAgfiAvXGZJZXJlXGZC
LwogLmZpIFxmUgogLlAKIC5SRQpAQCAtMjIzMCw3ICsyMjMwLDcgQEAgcHJlY2VkaW5nIHRleHQg
c3ludGF4IGRlc2NyaXB0aW9uLgogLlAKIC8qIE9uZS1jaGFyYWN0ZXIgdG9rZW5zLiAqLwogJXRv
a2VuICd7JyAnfScgJygnICcpJyAnWycgJ10nICcsJyAnOycgTkVXTElORQotJXRva2VuICcrJyAn
XChtaScgJyonICclJyAnXicgJyEnICc+JyAnPCcgJ3wnICc/JyAnOicgJyAiICIgJyAnJCcgJz0n
CisldG9rZW4gJysnICdcKG1pJyAnKicgJyUnICdeJyAnIScgJz4nICc8JyAnfCcgJz8nICc6JyAn
ICd+JyAnICckJyAnPScKIC5QCiAlc3RhcnQgcHJvZ3JhbQogJSUKQEAgLTI4NDYsNyArMjg0Niw3
IEBAIG5hbWVzIGFyZSB0aGUgY2hhcmFjdGVyOgogLlJTIDQKIC5uZgogXGZCCi08bmV3bGluZT4g
eyB9ICggKSBbIF0gLCA7ICsgXChtaSAqICUgXiAhID4gPCB8ID8gOiAgIiAiICAkID0KKzxuZXds
aW5lPiB7IH0gKCApIFsgXSAsIDsgKyBcKG1pICogJSBeICEgPiA8IHwgPyA6IH4gJCA9CiAuZmkg
XGZSCiAuUAogLlJFCkBAIC0zMDEyLDcgKzMwMTIsNyBAQCBhbmQgdGhlIGZvdXJ0aCBmaWVsZCBk
b2VzIG5vdDoKIC5SUyA0CiAubmYKIFxmQgotJDIgICIgIiAgL3h5ei8gJiYgJDQgISAiICIgIC94
eXovCiskMiB+IC94eXovICYmICQ0ICEgfiAveHl6LwogLmZpIFxmUgogLlAKIC5SRQpAQCAtMzAy
NSw3ICszMDI1LDcgQEAgV3JpdGUgYW55IGxpbmUgaW4gd2hpY2ggdGhlIHNlY29uZCBmaWVsZCBj
b250YWlucyBhCiAuUlMgNAogLm5mCiBcZkIKLSQyICAiICIgIC9cZVxlLworJDIgfiAvXGVcZS8K
IC5maSBcZlIKIC5QCiAuUkUKQEAgLTMwNDIsNyArMzA0Miw3IEBAIGluIHByb2Nlc3NpbmcgdGhl
IHJlZ3VsYXIgZXhwcmVzc2lvbjoKIC5SUyA0CiAubmYKIFxmQgotJDIgICIgIiAgIlxlXGVcZVxl
IgorJDIgfiAiXGVcZVxlXGUiCiAuZmkgXGZSCiAuUAogLlJFCg==
--0000000000002cc82605884ae093--
