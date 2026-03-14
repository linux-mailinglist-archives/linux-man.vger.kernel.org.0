Return-Path: <linux-man+bounces-5260-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLrJEFu3tWkj4AAAu9opvQ
	(envelope-from <linux-man+bounces-5260-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 14 Mar 2026 20:30:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B967E28E9AF
	for <lists+linux-man@lfdr.de>; Sat, 14 Mar 2026 20:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3CB3C302BEBB
	for <lists+linux-man@lfdr.de>; Sat, 14 Mar 2026 19:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B480A2EC0A2;
	Sat, 14 Mar 2026 19:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZLHzLLAV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39779277037
	for <linux-man@vger.kernel.org>; Sat, 14 Mar 2026 19:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773516610; cv=none; b=r/hqsfcPlChTQAryk+d0yVu7AcY86U3s57bvjUDOcYYD3d3Mz4CuTiFQp9ilWMBJvnFhiufCAvZUC1iuqnMl3krVijTPghY/nccnRxlBpqVQHExmY3MMFxkEa5wjTBdOIP59metbiXqPb7+NJrlHh0M0Y0Mc30nnoJcbnEBfuvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773516610; c=relaxed/simple;
	bh=g8xVOwmK2NT6UO+NHfvWslvEfe3FiqybJNKRLDB86dA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=fL8ovdFEIBpif6LlE6o9BiZj+Ux76HCOW2WoQ6GP7Pt5VEA1jQqotGtjzIU9NreKrh/E0cI17aIlnWqBVMC47j23DL5sJQJRST1xYbwsT2gDO4FbLcQ3C62rJZyS76h1AO/9yoR3xDHv9bw0xouz5xcqXTx8l5hPZw18KEHs1BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZLHzLLAV; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-79495b1aaa7so31331587b3.1
        for <linux-man@vger.kernel.org>; Sat, 14 Mar 2026 12:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773516608; x=1774121408; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4TdekW8bewpUiLIHG/0EsQ8Yxood8bGS2d7ZxnTaMz0=;
        b=ZLHzLLAVbsYmLxbASKHSFCA2LPynxC9diPuWZaIN08sGLEA/9Iv+tpjQ4O05Nas/WD
         4qbx6EwNIXEpe+pgcBAUNW8lSJExJIA7IivQhONTvgEgwCH+KjVI+Zzqbxc+hg8MVjVZ
         4fArMr8d6xpk2src6ZyPB1/YynyaMlnHYOUvyvCE/HDTZPbetfFM9up8O8lCu385ONIt
         /fz/jLt98ykpRrs0K+kfikH5iLCXGg5th1i+3KQVard7n9w6zHF/UwGhDWOul8tKCAyZ
         FNgNY/3Hn2lYet/0SaaIGBYXEUVGF2ykfUKGbMqtga1UK1eHQUmHBJEdTDvKaJ4hyVfH
         DyQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773516608; x=1774121408;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4TdekW8bewpUiLIHG/0EsQ8Yxood8bGS2d7ZxnTaMz0=;
        b=AUiOuIKIpj7rCuyt4vUqzMYSw7azNt8juRS7k0y2BzIvE0zr7/w8KM6mKqvAY4Sur8
         lPAqoQYpqBOegvq/vb35BVZ723q0Q3rMEXRdt7YPKnOeEJnsFr7VSNGfbMOOfozUW4Gq
         ZGXg0i4Miu45V1dZZWmiCc9Ki5umbHZXTkbJKXA8tKYbFWsdUQSoTygmrIdUXPAyGZpE
         hy1d0uON8/iWvXuVP45YB/ips8cnYxXLFMFnRJz9LcRwxV216ecUs9UtbrwMO2lrXl70
         /J7QT2iyTYInJ1s7iGpOZdapZk7JeuWGkNCQCR21cMFvK+uT+yQlqA4vE9gWaYsB/eXO
         9mpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVf/4EPIdjmC9OPHXuNtpHHACywTq0Tp3F4jNIlCKm3C/Go7ZFUKpUqPFszJS3jWFeUMdbIqUJSG8E=@vger.kernel.org
X-Gm-Message-State: AOJu0YxCRnxZpvWlVxQ7xjfhtH943R11sdX4QAsxPno+1X3VbEJ0s17F
	6Hw4Oo6BM8WshMtOZpicgEMZOtDowkHoSH6VVpgkyUYPlplc7kr+6erh6aRZOA==
X-Gm-Gg: ATEYQzzHbANtSmd1q/r1jNAFLe3Uw+uXUhXUVlHnFmJGms8Ff5G8yrEgj4RBM48ud7g
	gf2HB6R9sVL7k+OzRy5PACtg2/9PDxA1zWiBvnLbtT8VtTSgwEEhnAaU46EFkNzbvUsfSFB9X8W
	wxx2vnYpkC3aWbElfloZvTDiUM09elH8T8L8vk7/xXCx78NXszPjS/jHs2TnyG4SmYi2DfA3Rt7
	nLL1R+NoHbByyOzdL8K2goFCOGwpYnSilGZDUitN+3IJVMyd7Slj0ZILhQcupW8fyJ8akp2gNNb
	Gl6BDFKjE6pdmVTGpl//hbeKayimq2GwbTIgs3YizugWTJU68T6S71Wso5xQj61wbLp+l9MlqCK
	5AHYzkkqA+8NbNrKKaiGq28H4s282k15BNiTC7+sKH2wLAd4lQx4nwAQXKdKR33VKhzLbvOCmxo
	a+6VbMcRgYd7Gq
X-Received: by 2002:a05:690c:6891:b0:79a:3d7f:e8e0 with SMTP id 00721157ae682-79a3d7ffc32mr11263587b3.19.1773516608068;
        Sat, 14 Mar 2026 12:30:08 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79917ee5845sm65539977b3.33.2026.03.14.12.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 12:30:06 -0700 (PDT)
Date: Sat, 14 Mar 2026 14:30:05 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: info-gnu@gnu.org, info-groff@gnu.org
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: groff 1.24.1 released
Message-ID: <20260314193005.v3rbph3hcks2oltm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pr6zursdv6yeuu7j"
Content-Disposition: inline
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5260-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,gnu.org:url]
X-Rspamd-Queue-Id: B967E28E9AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--pr6zursdv6yeuu7j
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: groff 1.24.1 released
MIME-Version: 1.0

We are pleased to announce the availability of groff 1.24.1.  Obtain
it from the GNU mirror network,

  https://ftpmirror.gnu.org/groff/groff-1.24.1.tar.gz

or, if the network is for some reason inoperative, directly from GNU.

  https://ftp.gnu.org/gnu/groff/groff-1.24.1.tar.gz ]]

Ensure the integrity of your download by checking this source code
archive's cryptographic signature; see "Obtaining groff" below.


What is groff?
==============

groff (GNU roff) is a typesetting system that reads plain text input
that includes formatting commands to produce output in PostScript,
PDF, HTML, or DVI formats or for display to a terminal.  Formatting
commands can be low-level typesetting primitives, macros from a
supplied package, or user-defined macros.  All three approaches can be
combined.

A reimplementation and extension of troff and other programs from AT&T
Unix, groff is widely available on POSIX and other systems owing to its
long association with Unix manuals, including man pages.  It and its
predecessor have produced several best-selling software engineering
texts.  groff can create typographically sophisticated documents while
consuming minimal system resources.

  https://www.gnu.org/software/groff/


Changes
=======

This release corrects bugs in the groff 1.24.0 release that regressed
working 1.23.0 features, adds automated test scripts, revises unclear or
misleading diagnostic messages, and improves documentation.  There are
no new features.

Details
-------

Since groff 1.24.0 was released on 28 February 2026, 3 people have
authored a total of 60 commits.

$ git shortlog --summary 1.24.0..1.24.1
     2  Deri James
    57  G. Branden Robinson
     1  Rocket Ma

The most noteworthy of the foregoing commits are as follows.

f9420c7b0 tmac/troffrc: Fix misleading diagnostic message.
ba0908298 [troff]: Improve error diagnostic.
c71b99984 Use sequential tag names to avoid possible random duplicates.
9c4e2c8c6 [troff]: Fix Savannah #68132.
45afde2cb [troff]: Regression-test Savannah #68132.
37f0060be groff(7): Document `.S` register as reserved.
b9d07e0cf eqn(1): Add "roff interface" subsection.
eee74c1a8 [eqn]: Fix Savannah #68115.
6e467c234 [eqn]: Regression-test Savannah #68115.

Another way of capturing the amount of revision is as follows.

$ git diff --stat 1.24.0 1.24.1 | tail -n 1
 87 files changed, 784 insertions(+), 282 deletions(-)


Obtaining groff
===============

Here are the compressed sources and a GPG detached signature[*].
  https://ftp.gnu.org/gnu/groff/groff-1.24.1.tar.gz
  https://ftp.gnu.org/gnu/groff/groff-1.24.1.tar.gz.sig

Use a mirror for higher download bandwidth.
  https://ftpmirror.gnu.org/groff/groff-1.24.1.tar.gz
  https://ftpmirror.gnu.org/groff/groff-1.24.1.tar.gz.sig

Here are the SHA-1 and SHA-256 checksums.

6bba283f8b55b74bbcafd56653876ec5d567de63  groff-1.24.1.tar.gz
dOKBl5W2r/QxrqyYPWOpyJaO6roqLrp9+LpMe0Hnz9g=  groff-1.24.1.tar.gz

The SHA-256 checksum is encoded in Base64 instead of the hexadecimal
form that most checksum tools default to.  The mechanism follows.

sha256sum < groff-1.24.1.tar.gz | cut -f1 -d\  | xxd -r -p | base64

(Because "base64" reads from a pipe, it doesn't know the file name, and
so the file name will not appear in the output.)

[*] Use a .sig file to verify that the corresponding file (without the
    .sig suffix) is intact.  First, be sure to download both the .sig
    file and the corresponding archive.  Then, verify the archive.

      gpg --verify groff-1.24.1.tar.gz{.sig,}

    If that command fails because you don't have the required public
    key, you can import it.

      wget -O 108747.asc \
        'https://savannah.gnu.org/people/viewgpg.php?user_id=108747'
      gpg --import 108747.asc

    Re-run the 'gpg --verify' command above again subsequently.


Caveats
=======

o GNU tools, or otherwise POSIX-conforming ones, are generally required
  to build on Solaris 10 or 11.  See the "PROBLEMS" file in the
  distribution archive.

o Solaris 10 has known problems with automated tests; see the "PROBLEMS"
  file in the distribution archive.


Acknowledgements
================

We'd like to thank the following people for helping ensure the quality
of this release.

Bjarni Ingi Gislason
Clem Cole
Dave Kemper
Peng Zhang
Rocket Ma

--pr6zursdv6yeuu7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmm1tzMACgkQ0Z6cfXEm
bc4sHA/9HC9kHbCOFIOGuc7mxRWfzjLWR1b9049ejWGtopjnvBXhrCVOzwePTd0H
rcZR/QaGXGd7/Erkimmm9L0m3lucU/HMehqqYIACaz4UMenqYvBCe5b/zdnvGxYs
2RVOhEa3DisQfo6ELGXhbHudy+WnxMZdMvuwacFVY49btmYV8cRjo2J61DN9x2E1
dc/4Wut5Xex9egUBEAnkwVoBUJDdPB5f84SHfSggXsTBoimh3+6CqsqgHZyYqEL1
bVMPELcReX09sZV/QUuDHtXQGd49ta/00Zy3Bntfycv0lp6efivw91Zc1jILwOD8
Cnc+sY9hju73BIwpgdfPxKf9ei3lmQdLnCTaGzI4kqVvofVfmaRxxZWNETVwy2BA
oDzcBHY+cinONWalGe5cT0QnvRqT6IDY67iqzblZQmkwuxqbOxuxgB2fTZk71Fty
wcEG9znSu5rfCA7tJmfkF7L7VKakmtiOV64za+Qk96GMucCf1S4Zm1jmhv1qGR/8
UpI5cSmdF6FakoVAT99sPJFhUD5vncPky1XUVuh19QtjpKnOuGWSlMO8zFhCn5Qc
Oc0ac8BsWj/8d0DArTNk46FH1mq7Dl3I9wnXUcSWncfos383Qnqa9i61xFINfwAs
4mMDvZDzIrRPh2KSEqeFINJCUUh8q56oXgGr6Pc6PQ+7liyQ0uY=
=3cS0
-----END PGP SIGNATURE-----

--pr6zursdv6yeuu7j--

