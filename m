Return-Path: <linux-man+bounces-730-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 717ED8A009E
	for <lists+linux-man@lfdr.de>; Wed, 10 Apr 2024 21:32:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 114DA1F25176
	for <lists+linux-man@lfdr.de>; Wed, 10 Apr 2024 19:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49C5E181322;
	Wed, 10 Apr 2024 19:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b="1tM87UUF"
X-Original-To: linux-man@vger.kernel.org
Received: from mxdmz01-muc.bfs.de (mxdmz01-muc.bfs.de [193.174.230.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61BE172BBA
	for <linux-man@vger.kernel.org>; Wed, 10 Apr 2024 19:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.174.230.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712777529; cv=none; b=tgXJACMjj5oDAamhuCSvv7I8llpHGg7EUR0XSZKFL1ikwI0DfXll3JxsMtb0WEXR2A/5xyI9+JGZeWcqV7QbPq0VhBDAn/Qw+gEhdf6RLFKB/X/KicYj6OpIY4h+5aMPJUe+K6zQDc1zriFQNEtq82GdyB3I2ZwI2nMBLS4HXOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712777529; c=relaxed/simple;
	bh=uYMHM5TNZPrF/4PamdyCNpF31VnjvM3td7U92JhwbZs=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=Emf9Mi+zrIheK7wGh+EaQ0RrM0BKcjo4OMRTFbKh2fc7BIwsIhVtwKmHY5nR/Ci0Mw/aTEc2cy9i3RdZABEyqtyo2cCvnPC5SHHXg6bIG8JHJeuZEgWEk8ZU46a0+0m8QInpkPIYPvcYy28mnDX++fYawq9UDIjJhHDnRXdwMCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de; spf=pass smtp.mailfrom=bfs.de; dkim=pass (2048-bit key) header.d=bfs.de header.i=@bfs.de header.b=1tM87UUF; arc=none smtp.client-ip=193.174.230.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bfs.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bfs.de
Received: from mxint01-muc.bfs.intern (unknown [10.175.16.17])
	by mxdmz01-muc.bfs.de (Postfix) with ESMTPS id A5743200B40E;
	Wed, 10 Apr 2024 21:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
	t=1712777168;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7BnKPhOYHhuduA3T5vqWTr50FSZBZXoivCgaSt8vH+M=;
	b=1tM87UUFYSC+CcS97EZ/9qHX/nEMOwOltR5Mf+C3IMT5U2iG+D3ItOCOz9ZhNrmEkxKJro
	z2gwSlqB54hXrJ/ApDKS6NksaGlLnMXiAvaLeCOBFyIfXCqnVsw4q8MXDeNfy8Omi76tof
	Ul4gNq8yhXN5sPr8f6As0FTTlYZ4dJf7ZgDETLuJcZ7PKPTZFpN024O8owZp2SBXZeOki7
	sR+pUhHCkLAJ0Th/QPfi7zQdL4+sdwtDXnBR2wgs30bHHL3hUNB2ynkaSUEBFdPiIW/SdT
	WKGJpVaZ+JE53mqAP1Xn+x9n266pLJ4RZ/imh1pt8COiyXgYiKkben9WRBdAMw==
Received: from SRVEX01-MUC.bfs.intern (SRVEX01-MUC.bfs.intern [10.161.90.31])
	by mxint01-muc.bfs.intern (Postfix) with ESMTP id 7A93D300FCCB;
	Wed, 10 Apr 2024 21:26:08 +0200 (CEST)
Received: from SRVEX01-MUC.bfs.intern (10.161.90.31) by SRVEX01-MUC.bfs.intern
 (10.161.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.37; Wed, 10 Apr
 2024 21:26:06 +0200
Received: from SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad]) by
 SRVEX01-MUC.bfs.intern ([fe80::e8ba:5ab1:557f:4aad%5]) with mapi id
 15.01.2507.037; Wed, 10 Apr 2024 21:26:06 +0200
From: Walter Harms <wharms@bfs.de>
To: Alejandro Colomar <alx@kernel.org>, "linux-man@vger.kernel.org"
	<linux-man@vger.kernel.org>
Subject: AW: Release tarballs and security (xz fallout)
Thread-Topic: Release tarballs and security (xz fallout)
Thread-Index: AQHaipNOFfzkoLVxJ0yJDgUhKzfIWrFh4Vi7
Date: Wed, 10 Apr 2024 19:26:06 +0000
Message-ID: <2e29520d16d94e0ebd0f1b158e7b7715@bfs.de>
References: <ZhVe08clpdlkrwpI@debian>
In-Reply-To: <ZhVe08clpdlkrwpI@debian>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-tm-as-product-ver: SMEX-14.0.0.3197-9.1.2019-28310.001
x-tm-as-result: No-10--10.040400-5.000000
x-tmase-matchedrid: /u6eYPvVX713vIGb4JF4peZcuYJz1PU5N0X64jGy2daSI3NjcezBrEhg
	YefbBNkElJcv8/s3xZhXZkvct74o319yWgt6olFsEPSTHBgcfv6C4WttdBsV6YFpfiJCHjoPMv6
	3KPkpsVsRM4XgQhcqvW6iU2VB+S5uXbM2D8mSFVhvc+XY7KtzsEjdGsFzQI8F2is2Jndz3MpM6d
	tE1TTn6rBUkXmajHBEYQvXp5XNRwPKx8BXMyxWlvrcVv0zfnWvXiGiRlIav8nOPLZMFkveQ6Wbz
	CM0NHEBihouhyogs30nTLpU0SyCEj9zOkYbeZWJS74sGh2G9bFXGVnGh7t0FpVWWV8EQExBC+iy
	fs1TRXa0qc3z0GikIxs4SU/plVBnF2otpFqOYv8Wd/c/Vdyl4G0N4VNEP5a3MLjTaDguNi9g3/w
	AI15j+SL8XG2/OyyQ/ELkIDWNytNdXCl/d5Ej2xqsS/8jaA/K1c04BDYxKLYmkrgX3CciJtFJvI
	9LYcV32QAtIlvtIy05j8hK5bo5NtWzauy7M2gEX/4IKAAaaAAaC7z/aKmiUtTp+VxxlGXy
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--10.040400-5.000000
x-tmase-version: SMEX-14.0.0.3197-9.1.2019-28310.001
x-tm-snts-smtp: 8B0F0CAD677FB40640DF67B912EB786B1A35885947FA8B2AD02A3D09CD63702E2000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

hello, here my opinion ...

I followed the xz hack and the main problem (in my view) is that the person
(tried or go) write access to the git archive. In that case it is game over=
.

Normaly i run a tar vtzf BEFORE i install a tarball (more to make sure that
they will produce a directory and do not spill everything in my home). That=
 is
be no means perfect but it helps a bit.

For the man-page project i can imagine a 2 tarball solution. One for the pa=
ges, and one
for anything executeable, so i can use an older/trusted version of an insta=
ller, but
again an "evil maintainer"-attack is - as any suply-chain-attack -  hard to=
 notice
and even harder to prevent.

YM2C
  wh
________________________________________
Von: Alejandro Colomar <alx@kernel.org>
Gesendet: Dienstag, 9. April 2024 17:29:16
An: linux-man@vger.kernel.org
Betreff: Release tarballs and security (xz fallout)

Hi all!

For context: <https://tukaani.org/xz-backdoor/>

Given the recent XZ vulnerability caught just in time, I wonder if we
should take any action in this project to help the ecosystem.

Some have mentioned that release tarballs are too opaque, and can easily
hide code that's not under git(1) control.  I myself have been feeling
like that for a long time.

I've modified the build system recently so that tarballs should be
reproducible byte-per-byte.  This means that downstream distributors
don't really need to "trust" tarballs signed by me, but they can (and
IMO should) generate them themselves by running `make dist`, and they
should be fine.  Our git tags (and all the commits, BTW) are signed.

Here's my proposal:

Stop distributing release tarballs, and instead ask downstream packagers
to create them themselves by running `make dist`, or even not using
tarballs at all; `make install` from a tarball should be exactly the
same as `make install` from the source repository (IIRC).

Any opinions?

Cheers,
Alex

--
<https://www.alejandro-colomar.es/>

