Return-Path: <linux-man+bounces-1903-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 985D69C6C7A
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 11:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 481001F23133
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 10:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685941FB3FD;
	Wed, 13 Nov 2024 10:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="SHltpWJP"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744D1FAC48
	for <linux-man@vger.kernel.org>; Wed, 13 Nov 2024 10:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731492751; cv=none; b=XeZfYR7XHHTrLf4qUo3u8l3btndChkKDWZHdsMbkRib6o1RTyc4YeOCZu8BC+N6s8Sliq2tpyXFug0LXP73Y23GBuOyPN6bMHCsgJD88Pyuwgm8AcFSgMQ5uBfLd/oCGvXZZu6Kjy8NpuTkx8EiztRX3RKR3CMPVrjj4GXLWroA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731492751; c=relaxed/simple;
	bh=GghWXNBGcOA21L47cxe62fHg9wmtQ4Jt2KuQIuTc9HM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bCP/uuV9OcFFvPBQClhjOzah8DznP4TBpF3V1lkCy387egGIYwt29NNExqu2MRplKV/QjxrIl96S8Bh7a8Nl3fmkGlzUNOBiSTPFraGZ+Yn2LMwDC1BG7VNAgjNrg+6tq/frdft/N97LDQ5ixOVER55eT/Cya9tlYzqEQhOjsk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=SHltpWJP; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <ken@gnu.org>)
	id 1tBAMN-0000Ys-Cr; Wed, 13 Nov 2024 05:12:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=MIME-Version:Subject:To:From:Date:in-reply-to:
	references; bh=s0cGwX8LsPWFBeXvyvtFhxClpk3WHjWYM7nRgOc43Xk=; b=SHltpWJPwf4nrz
	pd8nRus/UIdmsp3TrkqJ6keSciBkxwev5E3eoP2MXUPyapbHs8XBOC6c5iAUDZiICokin9EkJxuzm
	ZPQNXQlcBMLve5xdTVclq5EPArdmhxS2sQeMufPnBlXMxVg3JfzDTvogVu/tWOPzP3yDDXnKtWlLG
	ChNqoHMR0JkNa1F/M91UUY7JLTKDNiSaqLrko5jEg4fz9o3Z1RuL+HU2vCaXyaqcpXoElt1uiTGr5
	tGM+M2JF5apG3Q8r2ExZwQmRZva2wnUBcAksR9BBwM9BbkSTS26cu8afZ/GoE2tlBwe/IghsrsurK
	HeY+nttc5iOnSFfW1Lig==;
Date: Wed, 13 Nov 2024 02:11:52 -0800
From: Ken Pizzini <ken@gnu.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: improve description of %a in printf(3)
Message-ID: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IwHjWAgeO62hruqb"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit


--IwHjWAgeO62hruqb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

The description of the %a/%A specifiers in the printf(3) man page
could stand some improvement.  In particular, it is not clear from
the current (6.9.1) document what base is used for the "p±d" part of
the format.  Furthermore, the description refers to a "decimal point",
even though it would be better referred to as the "radix point",
as the number in question is not a decimal representation.

It can be inferred from the nature of %a that the base should be
a power of two. and it can be further inferred from the nature of
hexadecimal floating-point literals in C (as specified by C99 and
later) that the base must exactly be the number two, but it would be
helpful for the printf(3) man page to state this explicitly.  My first
expectation when reading the man page was that the exponent would be
taken in base 16; my second thought is that it is base FLT_RADIX (which
is 2 on IEEE 754 floating-point systems, but 16 on S/390).  Only by
going back to the standard and reading carefully could I determine
that the exponent in p-notation must always be taken from a base of 2.

A patch with one suggested wording is attached. The entry for "a, A" in
   https://pubs.opengroup.org/onlinepubs/9699919799/functions/printf.html
gives an even better rewording, though I suspect there would be
copyright issues in simply copying its text.

		--Ken Pizzini

--IwHjWAgeO62hruqb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="printf.diff"

--- printf.3~	2024-11-13 01:07:23.023847047 -0800
+++ printf.3	2024-11-13 01:55:48.368341811 -0800
@@ -757,15 +757,18 @@
 the letters ABCDEF, and the exponent separator
 .B P
 is used.
-There is one hexadecimal digit before the decimal point,
+There is one hexadecimal digit before the radix point,
 and the number of digits after it is equal to the precision.
 The default precision suffices for an exact representation of the value
 if an exact representation in base 2 exists
 and otherwise is sufficiently large to distinguish values of type
 .IR double .
-The digit before the decimal point is unspecified for nonnormalized
+The digit before the radix point is unspecified for nonnormalized
 numbers, and nonzero but otherwise unspecified for normalized numbers.
-The exponent always contains at least one
+The exponent
+.IR d ,
+which is the appropriate exponent of 2 expressed as a decimal integer,
+always contains at least one
 digit; if the value is zero, the exponent is 0.
 .TP
 .B c

--IwHjWAgeO62hruqb--

