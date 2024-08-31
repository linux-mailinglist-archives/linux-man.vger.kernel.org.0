Return-Path: <linux-man+bounces-1737-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C09672F8
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:21:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 118F9283496
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 18:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46DB75589A;
	Sat, 31 Aug 2024 18:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bT01rTve"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C4323774
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 18:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725128496; cv=none; b=OcpiyT0sA3Wryt2YnEtvnwQ+EIc8649qC8h6lCaVcJGAedqd9Ki5RFIH78CVOCntv07/NhsCNLXBhYlqsbl+Zp/9KZBQZAy6s7BxZ4/Ln9Q+mtrFatPlZ/HC2aqKVSds67N+fWWH9ceabdDNqewzQteiUh+nUuBtidm6W0XOCjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725128496; c=relaxed/simple;
	bh=8ZfOaWu+zRjBQSD8qp2ffNA3zQlUN6g2n0cS8ZP09TY=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ukbx7GOsJmEp/ZuN8TMIqyXTam6/3oxqo/B6fzXBbu5hERpQuI0OMH5HeT1ngKFcCG0Esc6FuVnNyNcUyb/V4q2BNv9lzAxqQ+a7Np6FiL0xhTfYizUSxfhfuVUHlO8gN21RJPsQJtF9uFuf6NZEI1G/KRGNU3sWOuKCxnkHw9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bT01rTve; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-70f6118f1b5so1849644a34.0
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 11:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128494; x=1725733294; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6nV4yWspBV9/20T9Ssks6un59LJ68Tf5FkrklzRWVjU=;
        b=bT01rTvem/MwCi2Adl/CzE8BZTWFGZWthyKllTkkSUCqal7CpLfAw2Oy3ATVKEoTLT
         /sko0OG3YNJorh+CbYDOxswKaN/NjWaXtx4EM25eK215zbU9k9MUwGumcEreZtIwaft0
         QzfjRdShb8O2Ed4T+GEvYiH0BFcSTQXyYTL7FOMvJcNlGw228O8Fq0x9Jd96Oh4vfAkt
         rVriu6RNQE6o6AEGBqw8G2NMT1qDKpmHkTKZy8uEOmO43bWfSZhrO7fGwoZXz+kltPCU
         uW8u0MIh3+BdS5xfVQw94GVVST+qGmZKgDsXw0awrYkEwxMSoeRMLu+DgyM94XhV0GDf
         uWzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128494; x=1725733294;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6nV4yWspBV9/20T9Ssks6un59LJ68Tf5FkrklzRWVjU=;
        b=aNVaxBAggWIb1Gw48V7fJjypE7AKH7S1F6qZqgKi7aRF4tiIBHbcN0OqNIp1ceWALg
         7pNdDGciRFyYNbzyqf33Dl4fJAu2q2T19wedZHZEGoF6k2wRubmiQ/szj4jlvhYOWZkC
         5+o6DpFsVEZJLHM7sU+I0oEpSdDtxg718gZ0jaUNGrDgk73lUjVixJ1SNmsvVacX/Vl9
         JxLefcqtLF1AsWDRL5VcgGyzw/onw7vTvhNKWhPEEIUgfdIz3bA5cXSjfRWiQP5WYv7e
         yFLfGNf/hJXHk1vle8mIW/z6wQHXiiLQu4tk33e9sb1jWSWYj4j+O+RSdhpTbAjaMMza
         FuWw==
X-Gm-Message-State: AOJu0Yxt5d3tpP9vPPEI4MmRHBUMtzEZ25a+6CBdPQn2Yw+iG69Bi+n4
	Vg4G5TUA4vkCH5o4s6OT5pUys00YLLeG67wqrGm4R0aRhW6ocdxXg7TwOw==
X-Google-Smtp-Source: AGHT+IEh83zhOKK06FeeotFBP+YK3JuXz4llwZ7tqxkS1TdHqDqHHWdRUtWdH6A1EpQ/Fxxn7IxiXg==
X-Received: by 2002:a05:6830:349b:b0:704:3fea:5354 with SMTP id 46e09a7af769-70f5c3588c3mr12372149a34.10.1725128493687;
        Sat, 31 Aug 2024 11:21:33 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f6717531fsm1115025a34.47.2024.08.31.11.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:21:33 -0700 (PDT)
Date: Sat, 31 Aug 2024 13:21:31 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 5/5] namespaces.7: ffix
Message-ID: <20240831182131.epoknfpg3qgdtoba@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yh4pzrpy4cxynwre"
Content-Disposition: inline


--yh4pzrpy4cxynwre
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 5/5] namespaces.7: ffix
MIME-Version: 1.0

Put a paragraph break before the table; this looks better.

Use *roff requests to shut off adjustment and hyphenation for the
rightmost column of the table, which uses text blocks.  (In man pages,
use of such requests _outside_ of tbl(1) text blocks remains discouraged
by groff(1) and mandoc(1) developers.)

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man7/namespaces.7 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man/man7/namespaces.7 b/man/man7/namespaces.7
index c0d705ffb..60b631fcc 100644
--- a/man/man7/namespaces.7
+++ b/man/man7/namespaces.7
@@ -29,6 +29,7 @@ .SS Namespace types
 on the namespace type.
 The last column is a summary of the resources that are isolated by
 the namespace type.
+.P
 .TS
 lB lB lB      lB
 l  lB lw(21n) lx.
@@ -36,17 +37,23 @@ .SS Namespace types
 Cgroup	CLONE_NEWCGROUP	T{
 .BR cgroup_namespaces (7)
 T}	T{
+.na
+.nh
 Cgroup root directory
 T}
 IPC	CLONE_NEWIPC	T{
 .BR ipc_namespaces (7)
 T}	T{
+.na
+.nh
 System V IPC,
 POSIX message queues
 T}
 Network	CLONE_NEWNET	T{
 .BR network_namespaces (7)
 T}	T{
+.na
+.nh
 Network devices,
 stacks, ports, etc.
 T}
@@ -59,17 +66,23 @@ .SS Namespace types
 Time	CLONE_NEWTIME	T{
 .BR time_namespaces (7)
 T}	T{
+.na
+.nh
 Boot and monotonic
 clocks
 T}
 User	CLONE_NEWUSER	T{
 .BR user_namespaces (7)
 T}	T{
+.na
+.nh
 User and group IDs
 T}
 UTS	CLONE_NEWUTS	T{
 .BR uts_namespaces (7)
 T}	T{
+.na
+.nh
 Hostname and NIS
 domain name
 T}
--=20
2.30.2

--yh4pzrpy4cxynwre
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTXysACgkQ0Z6cfXEm
bc6pQBAAhx67+GbsU2Oer4lceAjPKxOyCx1nOnuZmuIb4bzRetMDvujAD+2y++vJ
BpDzlTza6fZnBJTt/0kbyDZnbMy/i5ZsTRkcpyaGq2qZVxhRL8eqvonaHVqDNkPm
hwfdNbJLTfUX5uzyNufxaeLZ/AYrGpQYTI45x42wEpZ7jvl5xVbT0bbtG7DXz7CQ
EucPE20tICYiw8cuMXYxO9HwTEBk4PDXWQ5NGgXV9R83+4XkqS0icWtmy5c+V+Ml
L5lXqgJMvBu+ASTq2MtkxtUfYMKUyv2t55rDaMAlgM0fGILgSTKbW/hB19hzb2Ni
BeTKfBv1uVuWA68ezvJeXqSJblQ+KQ0YTD7GtqxDRyPf00AROk0cEqExvjL1+J28
SS/HefpnJgnyqeQ6QlivdyU9Wpe2QxKPSDONORIswcRJ/CpN4JSiJ5yIVerhl0uJ
SxwxdAd/Lp7bk+U2nBgQjZQhtxzG97i0qmzc8vr7KNSqpuhlNo9pb8qPGbOVa4zu
FYpOaPThf3yWK5exfZMWn5b+X3xPIz+qcKJypGmtiGbeYZg9jAqCegpyYsYuqXqY
pLte762VeXXm5Lk1dRra5f+oYnKU+bN++0sHRp0La5cMcl0Emf2HkApAXseqoQBK
3cBUYij+SNigfEO8F4HGw8FGtTqTJ/WBXpc36Hg5FZvhKUzP6o8=
=UpZX
-----END PGP SIGNATURE-----

--yh4pzrpy4cxynwre--

