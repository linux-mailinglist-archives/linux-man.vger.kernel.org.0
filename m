Return-Path: <linux-man+bounces-1008-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7BF8D18D4
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 12:44:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DD4B1F24DC4
	for <lists+linux-man@lfdr.de>; Tue, 28 May 2024 10:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA77516B743;
	Tue, 28 May 2024 10:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bJYXezN3"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D8216B738
	for <linux-man@vger.kernel.org>; Tue, 28 May 2024 10:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716893051; cv=none; b=bdrBgWuJc0FJfpHzsbZPoKKK+t1r8WnYNzAwCJeRSxpECLXG95ZEUiqQ+YGOCtcV4IRvUQ/y8jhxpDQQp5tf6Wav8HT+GuL44ECPX6nq61zljscKcM93J+tw2mxkp9ccyeeD2pPK+CYJzbMKuYgcyb4rsdjdVt6y6nSa2Fg2zsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716893051; c=relaxed/simple;
	bh=r9YHuHLhHTurol2eCz0ogMKdfsGMOJuGnk/utZ2+Ip4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=JenmjGCtbJa+T6VCu4sgEtpFIiqyoeC++qITxLz4Iz+nuhki3K+PQutLFQ9EB82FNMiwruGRNYNDLc4TAPla1CHkstzV6bfcm85emM3QXQx1pZw1psM2gsLMoOKa+SDglpgftPA5bfwmNonCdUEGwW0kr26atlxbQLwT1Wri04E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bJYXezN3; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716893047;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=UNpyO3HH1OFqfTLq/8inHG6lU6lLoc41Qv3MtqMPLKc=;
	b=bJYXezN3c1nx63IXTmUQ0aDrUBxPjZwI0LE6UrPnHDlYkoiseZURIFuqh2eqMcgiceqR+j
	4elgteFkvpwVTDu/kBtoieUQPjflYO/CZ94z6ZVK4zvbB/LxPkqdYKc70P9rLdPz8Dgw34
	hO/729L3m1/izhZg+4gIg3GfWrtTCzA=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-439-UISGcfDXNJ2IpBKu_1iuig-1; Tue, 28 May 2024 06:44:03 -0400
X-MC-Unique: UISGcfDXNJ2IpBKu_1iuig-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2e95abc0d8eso5028891fa.2
        for <linux-man@vger.kernel.org>; Tue, 28 May 2024 03:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716893039; x=1717497839;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UNpyO3HH1OFqfTLq/8inHG6lU6lLoc41Qv3MtqMPLKc=;
        b=VZWhf1XXDhNLozIe7fd9KO0RSTboibM+uHMmoV43wg7p3Wa7yzdpgNtVgKNGMG1GHG
         UHOTj8IcjYf1O8hrjIAGoRht83DAcDXpHdT88weDu3AdpSb3neYI4Yin+qJgw3nmQu50
         r8dLO/MLV1czeCXIj/fQLQO2dOPpz9touEwlnmsXSo1FZPtp8sH9RbZpb1M8xPS+HGc7
         LeDBGnNoMrIt4+b3wecCek4irhvC83c8OuPCOzEmIOEADKYUDQrY0EgylbxoIGTV7hj8
         lVIKB9L+esgMQAtWjtcF+a1roldaPUjMIglHgam5D4vFd+nYRfyz6ZjuYiojNa/n/fM0
         53Ew==
X-Gm-Message-State: AOJu0Yyd9Jyl/YNWzwCxes35/EjVb4dL5Bm9ictHUsy9dau0LXZmxaym
	Kt2/2SozrYjvoucXpJ6UbH7gMZuIsgcnZPLjI7rjzpuwIvb1OCkU6cUtmlzqsR/VfirCqurMqAY
	SCYfVETrOaXT9xqf6popoN6v4EKkMpHi85CMhRrwhbEUCpFt8SOa72DM+5ak0bMBJcsknDyaP7n
	vttRctuFhWZGbgSGffE89wGWJPlZV3Arrt8Fxi0L1U0PU=
X-Received: by 2002:a2e:380a:0:b0:2e1:9c57:195a with SMTP id 38308e7fff4ca-2e95b25652cmr103193271fa.32.1716893039202;
        Tue, 28 May 2024 03:43:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoKn7l0BG52QVgLfqqDczCrpwKotB/RWgXwkgJa9YC/KdXghtTQgJsVmrsLXarFb6JIUp3X+s3wu1a1P4Rqts=
X-Received: by 2002:a2e:380a:0:b0:2e1:9c57:195a with SMTP id
 38308e7fff4ca-2e95b25652cmr103192881fa.32.1716893038449; Tue, 28 May 2024
 03:43:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Lukas Javorsky <ljavorsk@redhat.com>
Date: Tue, 28 May 2024 12:43:21 +0200
Message-ID: <CAK719L0Yys229m7_PGzaho+foPA3yPD4WkuPS1K3psKNbybwDg@mail.gmail.com>
Subject: [PATCH] write.2: Fix a typo within the `ssize_t write` function argument
To: linux-man@vger.kernel.org, Alejandro Colomar <alx.manpages@gmail.com>, 
	Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000ad8ab60619814fae"

--000000000000ad8ab60619814fae
Content-Type: multipart/alternative; boundary="000000000000ad8aaf0619814fac"

--000000000000ad8aaf0619814fac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Reference: https://pubs.opengroup.org/onlinepubs/7908799/xsh/write.html

I'm adding the patch to the attachment as well because my last patch was a
bit problematic with the email.
---
diff --git a/man/man2/write.2 b/man/man2/write.2
index a24cbdc31..e9b7dd739 100644
--- a/man/man2/write.2
+++ b/man/man2/write.2
@@ -26,7 +26,7 @@ Standard C library
 .nf
 .B #include <unistd.h>
 .P
-.BI "ssize_t write(int " fd ", const void " buf [. count "], size_t "
count );
+.BI "ssize_t write(int " fd ", const void *" buf [. count "], size_t "
count );
 .fi
 .SH DESCRIPTION
 .BR write ()

--=20
S pozdravom/ Best regards

Luk=C3=A1=C5=A1 Javorsk=C3=BD

Senior Software Engineer, Core service - Databases

Red Hat

Purky=C5=88ova 115 (TPB-C)

612 00 Brno - Kr=C3=A1lovo Pole

ljavorsk@redhat.com

--000000000000ad8aaf0619814fac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Reference: <a href=3D"https://pubs.opengroup.org/onlinepub=
s/7908799/xsh/write.html">https://pubs.opengroup.org/onlinepubs/7908799/xsh=
/write.html</a><br><br>I&#39;m adding the patch to the attachment as well b=
ecause my last patch was a bit problematic with the email.<br>---<br>diff -=
-git a/man/man2/write.2 b/man/man2/write.2<br>index a24cbdc31..e9b7dd739 10=
0644<br>--- a/man/man2/write.2<br>+++ b/man/man2/write.2<br>@@ -26,7 +26,7 =
@@ Standard C library<br>=C2=A0.nf<br>=C2=A0.B #include &lt;unistd.h&gt;<br=
>=C2=A0.P<br>-.BI &quot;ssize_t write(int &quot; fd &quot;, const void &quo=
t; buf [. count &quot;], size_t &quot; count );<br>+.BI &quot;ssize_t write=
(int &quot; fd &quot;, const void *&quot; buf [. count &quot;], size_t &quo=
t; count );<br>=C2=A0.fi<br>=C2=A0.SH DESCRIPTION<br>=C2=A0.BR write ()<br>=
<br>-- <br>S pozdravom/ Best regards<br><br>Luk=C3=A1=C5=A1 Javorsk=C3=BD<b=
r><br>Senior Software Engineer, Core service - Databases<br><br>Red Hat<br>=
<br>Purky=C5=88ova 115 (TPB-C)<br><br>612 00 Brno - Kr=C3=A1lovo Pole<br><b=
r><a href=3D"mailto:ljavorsk@redhat.com">ljavorsk@redhat.com</a></div>

--000000000000ad8aaf0619814fac--
--000000000000ad8ab60619814fae
Content-Type: application/octet-stream; 
	name="0001-write.2-Fix-a-typo-within-the-function-argument.patch"
Content-Disposition: attachment; 
	filename="0001-write.2-Fix-a-typo-within-the-function-argument.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lwq9pgj70>
X-Attachment-Id: f_lwq9pgj70

RnJvbSA1NzI4ZTY0MzhkZGI0M2NiMzBhZTIxMDA1YjYzMTUyNjFlZWRlOGQxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBMdWthcyBKYXZvcnNreSA8bGphdm9yc2tAcmVkaGF0LmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXkgMjAyNCAxMDozODoxMCArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIHdy
aXRlLjI6IEZpeCBhIHR5cG8gd2l0aGluIHRoZSAgZnVuY3Rpb24gYXJndW1lbnQKCi0tLQogbWFu
L21hbjIvd3JpdGUuMiB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21hbi9tYW4yL3dyaXRlLjIgYi9tYW4vbWFuMi93cml0
ZS4yCmluZGV4IGEyNGNiZGMzMS4uZTliN2RkNzM5IDEwMDY0NAotLS0gYS9tYW4vbWFuMi93cml0
ZS4yCisrKyBiL21hbi9tYW4yL3dyaXRlLjIKQEAgLTI2LDcgKzI2LDcgQEAgU3RhbmRhcmQgQyBs
aWJyYXJ5CiAubmYKIC5CICNpbmNsdWRlIDx1bmlzdGQuaD4KIC5QCi0uQkkgInNzaXplX3Qgd3Jp
dGUoaW50ICIgZmQgIiwgY29uc3Qgdm9pZCAiIGJ1ZiBbLiBjb3VudCAiXSwgc2l6ZV90ICIgY291
bnQgKTsKKy5CSSAic3NpemVfdCB3cml0ZShpbnQgIiBmZCAiLCBjb25zdCB2b2lkICoiIGJ1ZiBb
LiBjb3VudCAiXSwgc2l6ZV90ICIgY291bnQgKTsKIC5maQogLlNIIERFU0NSSVBUSU9OCiAuQlIg
d3JpdGUgKCkKLS0gCjIuNDUuMQoK
--000000000000ad8ab60619814fae--


