Return-Path: <linux-man+bounces-445-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A2854472
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 09:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2431F1C2106B
	for <lists+linux-man@lfdr.de>; Wed, 14 Feb 2024 08:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 992547499;
	Wed, 14 Feb 2024 08:57:12 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cilium.nesselzelle.de (cilium.nesselzelle.de [138.201.35.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0216125A2
	for <linux-man@vger.kernel.org>; Wed, 14 Feb 2024 08:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=138.201.35.114
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707901032; cv=none; b=Qqg22eVYA4VesNapmzHOAv7YP5UNDmDwV1cSWeRf5EMvDWPw+wTIYxsTpjopyB7Aasa1bouNOPrbZh528FXUMCzM/ctmT77aaGz41D5BQt/usmcWaTTXZjgQPwh1yqgH/266Gv1cUP7iTGqx9HSlUXsKyjoxu0Csxou4kpIejOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707901032; c=relaxed/simple;
	bh=AJfrw+OoBegcPep4ort7pJg0vrZoKug08mQj5wOUgU8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=f9a/y1mR+5CqJYFI3qlCSo5N4dA7YbQ4/PZouXMQoX2fYuS5CsSVkKk9yrBCGN5JgGp0MfwZsU/UY65KmkXbrYdz3twqr2mA99FhVDiID6I4yf8b82f+8QNDGSiCjL/6rd4j99qqrtBET+8TsfbhUucCtxRFX4drgSfzFzL15YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org; spf=pass smtp.mailfrom=orgis.org; arc=none smtp.client-ip=138.201.35.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=orgis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=orgis.org
X-Bogosity: Ham, spamicity=0.000000
Received: from localhost (zentriol.nesselzelle.de [144.76.80.99])
	by cilium.nesselzelle.de (Postfix) with ESMTPSA id D56DB4007E;
	Wed, 14 Feb 2024 08:57:08 +0000 (UTC)
Date: Wed, 14 Feb 2024 09:57:07 +0100
From: Thomas Orgis <thomas@orgis.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: SA_RESTART and friends as XSI extensions to POSIX.1-2001 < 
 XOPEN_SOURCE >= 600
Message-ID: <20240214095707.1824c25c@plasteblaster>
X-Mailer: Claws Mail (x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/57h+EDqfL/d5bEzJ0XvBJH3";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/57h+EDqfL/d5bEzJ0XvBJH3
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi,

I had trouble compiling code with -std=3Dc99 and needed some time to
figure out why the use of SA_RESTART did not work with

#define _POSIX_C_SOURCE 200112L

despite the man page of sigaction suggesting that this would be the
correct feature test macro. Searching around the net reveals that this
is a known discrepancy between man pages and glibc since at least 11
years. People stumble over this, learn, forget. Please let's document
it this time;-)

sigaction(2) claims this:

POSIX.1-2001 added
.BR SA_NOCLDSTOP ,
.BR SA_NOCLDWAIT ,
.BR SA_NODEFER ,
.BR SA_ONSTACK ,
.BR SA_RESETHAND ,
.BR SA_RESTART ,
and
.BR SA_SIGINFO .

All of these are extensions (XSI) to POSIX and need _XOPEN_SOURCE 600.

Quoting https://pubs.opengroup.org/onlinepubs/009695399/basedefs/signal.h.h=
tml
(thanks to https://unix.stackexchange.com/questions/613139/sigaction-sa-fla=
gs-and-posix-1-2001-base-spec):

The following shall be declared as constants:

SA_NOCLDSTOP
    [CX] [Option Start] Do not generate SIGCHLD when children stop [Option =
End]
    [XSI] [Option Start] or stopped children continue. [Option End]
[...]
SA_ONSTACK
    [XSI] [Option Start] Causes signal delivery to occur on an alternate st=
ack. [Option End]
SA_RESETHAND
    [XSI] [Option Start] Causes signal dispositions to be set to SIG_DFL on=
 entry to signal handlers. [Option End]
SA_RESTART
    [XSI] [Option Start] Causes certain functions to become restartable. [O=
ption End]
SA_SIGINFO
    [XSI] [Option Start] Causes extra information to be passed to signal ha=
ndlers at the time of receipt of a signal. [Option End]
SA_NOCLDWAIT
    [XSI] [Option Start] Causes implementations not to create zombie proces=
ses on child death. [Option End]
SA_NODEFER
    [XSI] [Option Start] Causes signal not to be automatically blocked on e=
ntry to signal handler. [Option End]

[and not mentioned in the man page, not relevant?]

SS_ONSTACK
    [XSI] [Option Start] Process is executing on an alternate signal stack.=
 [Option End]
SS_DISABLE
    [XSI] [Option Start] Alternate signal stack is disabled. [Option End]
MINSIGSTKSZ
    [XSI] [Option Start] Minimum stack size for a signal handler. [Option E=
nd]
SIGSTKSZ
    [XSI] [Option Start] Default size in bytes for the alternate signal sta=
ck. [Option End]=20


As a related bit, I noticed that feature_test_macros(7) is a bit
misleading here:

.IP \[bu]
Defining
.B _XOPEN_SOURCE
with a value of 600 or greater produces the same effects as defining
.B _POSIX_C_SOURCE
with a value of 200112L or greater.

As written later on the same page, X_OPEN_SOURCE 600 triggers a superset
of POSIX, not the same effects.


I hope these rather small changes can be made by a committer without
lengthy discussion of patches. I suggest  something along this, without
formatting details that I'd get wrong:

sigaction(2):

POSIX.1-2001 added
.BR SA_NOCLDSTOP ,
.BR SA_NOCLDWAIT ,
.BR SA_NODEFER ,
.BR SA_ONSTACK ,
.BR SA_RESETHAND ,
.BR SA_RESTART ,
and
.BR SA_SIGINFO ,
as XSI extensions (define _XOPEN_SOURCE to at least 600 to use).

feature_test_macros(7):

.IP \[bu]
Defining
.B _XOPEN_SOURCE
with a value of 600 or greater includes the effects of defining
.B _POSIX_C_SOURCE
with a value of 200112L or greater, adding the X/Open System Interfaces Ext=
ension (XSI).



Alrighty then,

Thomas

--=20
GPG public key 60D5CAFE: https://thomas.orgis.org/public_key
Fingerprint: D021 FF8E CF4B E097 19D6  1A27 231C 4CBC 60D5 CAFE
And despite all of you, I'm still doing it. Yes, I do write Perl code.

--Sig_/57h+EDqfL/d5bEzJ0XvBJH3
Content-Type: application/pgp-signature
Content-Description: Firma digital OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE0CH/js9L4JcZ1honIxxMvGDVyv4FAmXMgGMACgkQIxxMvGDV
yv4JEA/4vduhrCVkbTmGqfas9D0JHduIFcQZ7y4kyFK2/1ZUYDm8p1sx2COaFvO6
RImjCAtDrw7M35X5+DH96XsVkPHpsrrHO3TRXpC+QuvygxfVJPh5eTqw+kVXiaRJ
gEdG1MBkPCAQriBl7e7OTJ6WzFYAwdX2Zx019wznOv8GtxTSFXUL8rI7c4Y3APEO
Q+RaaZaPkEaSJmDvt/ESRPA67t+GQ9CH5C+Et7hypk+h8HCbaKN4KVykGlIr0133
PnL61VCEwJvDCT4XJh1wLkwQLxoZG7/eRnbrDgjJlU/ZIZIcdkWZdhyohJNjCivG
1RxGN7Kdmdy2ZWswkaFH5EWt5ck8TrXzvhfaiqicMO8hyJbJKFsDliszh0Q4jVz8
SGDQGdLI1NThwFwWeT/8emHnGBNznqd/S9Qq4440D4PKNND0Y/2c7rPTCw+TYOh6
bAcOG7WauvaOBARsecMtxa9pXgWbuZSfnP9G+ISKXEjb1MVkOZbJOoLCUurieA+8
QlHPc2W41SGuGVowapPnF5YV4c8p2dxvaGUrmzLC6ohT6Ieu7CISsTmmWfCCgTMT
B02kT5j1B4Ourp7c+pFG9JkDNUWbbyZxZh/vwVxkY8kVdqHZn8ul9cylzo11eo6u
l4oYKxpef0ziX1Yu3iaK3PnbbbGqcDy5xhsovVLuL56Lff2gAQ==
=HudH
-----END PGP SIGNATURE-----

--Sig_/57h+EDqfL/d5bEzJ0XvBJH3--

