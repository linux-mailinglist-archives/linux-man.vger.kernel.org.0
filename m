Return-Path: <linux-man+bounces-4898-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJ5gBV1wcWkPHAAAu9opvQ
	(envelope-from <linux-man+bounces-4898-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 01:33:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BA85FF52
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 01:33:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C89133C0D52
	for <lists+linux-man@lfdr.de>; Thu, 22 Jan 2026 00:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D07226F29B;
	Thu, 22 Jan 2026 00:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="ACGGS9HE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-24416.protonmail.ch (mail-24416.protonmail.ch [109.224.244.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2D22EBDFD
	for <linux-man@vger.kernel.org>; Thu, 22 Jan 2026 00:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769041991; cv=none; b=O+WU1kAlsss+gBnOpD12blZC2EB+zrey0Xg0iGc+6AHU8ax1nnpdHzKMyfwHQ79Y5aJurMuDTLDyV4Q90y+9HxjhmYRH5wigMyNJd/Mh5oI3nCbVDTmb2Cpz2nJEaFxuMXiSgOp5ljeMVWAOFlwIFk/BGX/ZT8yzdJIcPtVjxd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769041991; c=relaxed/simple;
	bh=YTVXhEMSXToY+j81WF01kUZdu6dgsY7u0sreUW7zgzY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GxgsL+k66q6TQLLGPSMzCCaeM8zarwUlopJidUoBZmuXdcVcto1yi2oRR03Lf8x4eFBBnvyk029LDDCWsEbLOC4IExuddhL8qwAFb+H7ps+LZiWfL77mPjxh80ED8I/E4ghbaT5npS3z6kOt5M/ZsEd/TG68q/Kr8xVVSUZRWk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=ACGGS9HE; arc=none smtp.client-ip=109.224.244.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769041981; x=1769301181;
	bh=+H71DVfSz2GgZJEAKhnKNM7K5k7y0hOAeAjB38NO9F4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ACGGS9HEm0bZ6lYBVkBVY1MfJtGSUN/KgCsOto8FX6JR7IuksIcN4WfVAOsYCukqj
	 +kJh6oP/BO6xQpH22izOIBmn6B94YyT35F0b8YF9nUGOHikdImc0crG50eLd94ZqYF
	 BsP3ZfLRlRU2arA47yHMbGJnFhNxOWCCBk1zLuj1p+EbzRsNeMyWId10ZWAa+aeB3v
	 P+h1X2khyiXUoHsEFZbtBK2Qvn/7e0M2cn77ebx5+vKuYxtqFPQY9Cs46BkbOgtEgi
	 WbrS0yY99WZu8wX+YK49eCJDwp7V9YOf90QrTNMxLahRuTL8tdKJ61zdSWtClxcHs5
	 /RRyQDmZX/iGw==
Date: Thu, 22 Jan 2026 00:32:55 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/23] man/man2/clock_getres.2: HISTORY: Update first POSIX appearance of clock_* syscalls
Message-ID: <aXFwMamVRAdu-NuR@McDaDebianPC>
In-Reply-To: <aXD1GRoxwzGA5Gsn@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me> <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me> <aXD1GRoxwzGA5Gsn@devuan>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 1aef1b23c1456fd133f53924e3c57fd6a449c720
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------8af9fd52cd99215ff57dbca0a09a325ec0c89a42ec39e6fcf30afd20dd26ff16"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4898-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[pm.me,quarantine];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWO(0.00)[2];
	HAS_ATTACHMENT(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: B6BA85FF52
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------8af9fd52cd99215ff57dbca0a09a325ec0c89a42ec39e6fcf30afd20dd26ff16
Content-Type: text/plain; charset=UTF-8
Date: Thu, 22 Jan 2026 10:32:49 +1000
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 01/23] man/man2/clock_getres.2: HISTORY: Update first
 POSIX appearance of clock_* syscalls
Message-ID: <aXFwMamVRAdu-NuR@McDaDebianPC>
Mail-Followup-To: Seth McDonald <sethmcmail@pm.me>,
	Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <cover.1768995315.git.sethmcmail@pm.me>
 <1a421b5ee130c1d5892791060b6fdf8d911d8362.1768995315.git.sethmcmail@pm.me>
 <aE98TnwcF8DPFqHRbXYl4hr72XnJwr-vaE_G1ig8gNPDnHaqiGyJYG1i-3uPXZ941fkNwRcA7KL69624Wt4zFw==@protonmail.internalid>
 <aXD1GRoxwzGA5Gsn@devuan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aXD1GRoxwzGA5Gsn@devuan>
User-Agent: Mutt/2.2.13 (2024-03-09)

Hi Alex,

On Wed, Jan 21, 2026 at 04:49:25PM +0100, Alejandro Colomar wrote:
> Hi Seth,
> 
> On Wed, Jan 21, 2026 at 12:06:57PM +0000, Seth McDonald wrote:
> > clock_getres(2), clock_gettime(2), and clock_settime(2) first appeared
> > in POSIX.1-1996.[1]  SUSv2 incorporates POSIX.1-1996, so listing both is
> > redundant.
> 
> Are you sure SUSv2 incorporates POSIX.1-1996?  Could you please show
> sources for that?

We can reference the following SUSv2 PDF:
CAE Specification, System Interfaces and Headers, Issue 5.
<https://pubs.opengroup.org/onlinepubs/009639399/toc.pdf>

Section 1.6 "Relationship to Formal Standards", page 11 states:

	Great care has been taken to ensure that this specification is
	fully aligned with the following formal standards:
	- ISO/IEC 9945-1:1996
	- ISO/IEC 9945-2:1993
	- ISO/IEC 9899:1990
	- ISO/IEC 9899:1990/Amendment 1:1994 (E) (MSE)
	- Federal Information Procurement Standards (FIPS) 151-2.

	Any conflict between this specification and any of these
	standards is unintentional.

Additionally, section 1.7 "Portability", page 12 states:

	This document describes a superset of the requirements of the
	ISO POSIX-1 standard and the ISO C standard. [...] (The ISO
	POSIX-1 standard is identical to IEEE Std 1003.1-1996, which is
	often referred to as the POSIX.1 standard. [...])

For context, page xiii defines "ISO C" as ISO/IEC 9899:1990 including
Technical Corrigendum 1:1994 and Amendment 1:1994.  And "ISO POSIX-1" as
ISO/IEC 9945-1:1996.

So SUSv2 XSH is a superset of POSIX.1-1996 and C95.

-- 
Take care,
	Seth McDonald.

On-list:  2336 E8D2 FEB1 5300 692C  62A9 5839 6AD8 9243 D369
Off-list: 82B9 620E 53D0 A1AE 2D69  6111 C267 B002 0A90 0289

--------8af9fd52cd99215ff57dbca0a09a325ec0c89a42ec39e6fcf30afd20dd26ff16
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0FgmlxcDYJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmcs2kC95aKAVqTMGkiPCdhCFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAANwbAQC+ueMGQfNz1yReKgyyo0Jm4BqmZy+m3Ol0742b
L/yIcgEA3tkYUmQXTIMbcHJyYH5D+vttKpNdJ03Ismk4Tg+CJwk=
=QoJr
-----END PGP SIGNATURE-----


--------8af9fd52cd99215ff57dbca0a09a325ec0c89a42ec39e6fcf30afd20dd26ff16--


