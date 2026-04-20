Return-Path: <linux-man+bounces-5349-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGI7NOGn5mm6zQEAu9opvQ
	(envelope-from <linux-man+bounces-5349-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:25:37 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAB6434961
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C967F300BB8B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:25:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C7737B00C;
	Mon, 20 Apr 2026 22:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XYMNso6R"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555FC3F9FB
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776723934; cv=none; b=ce1gW6TAXFbYKozrpD5586eCqxHchl2PD4sIIBQLeC5NHed3bSxVkvNAnFiJhVoLSwZbbj9A8yI6c08OkjYFEIdwebRoJhh+3JI1W71uDQm9GrPVRjOsX6vIGs4EDWen2aspFzpSA3UCWdbIgel45h+a/1jrv0Fo8A2hAdP43hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776723934; c=relaxed/simple;
	bh=NslkA6Iir3H/859ZcL2FQrUs/E2dLoyGbQ7wC0kE1EA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DE4ULUGCEjn4ZUJP9rDJde2u48dGNsIaLQ+pwWEmZ5Er7T3PeSgabAuCGT20zoY5O5tYOeOXS8UTWXE9THccBzD1yIFr+PqPOP2Hz+bh1sHQog+6YRDzK934wmtxQ+Uoxzmrq/jeyJGMPrbTckwWoODioFz6BmA6GDl7qDfyAW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XYMNso6R; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-488b3f8fa2bso40153665e9.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776723932; x=1777328732; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wZqIdRWNlghd++ItL9bobxy1KpFGcKc4AfBt0JWKtn0=;
        b=XYMNso6RXNQnIaLP+V+p6T/+1IeHjiQlu/wGa4RCnNkzc0keJ5Hx3sI5WeMoMaY+kV
         US3uCECJY6eKvFXBbq3NOg439LXN3wY6wKD3A21fakba0gavSB5SD5WtDULyMUHsDW1H
         jufL5QpPynTb5akuiOcLaKWvOR99074wP26UwcgMYlY+PuXDjZqkmuuE52rQ0zJPMXgV
         qp1Hln6p3xygSRqhLRzqZLCPcfgVuUsE0azwpSJ2jQ3zzO0vL7a4y3abpCjnW3VsJQSP
         K3eQ3c4B2xEEQWZcgvkiM85NGBUBbCUssJeOd5xGNO30CeyNZ0x+LHz4DywOLtH2aAAh
         OT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776723932; x=1777328732;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZqIdRWNlghd++ItL9bobxy1KpFGcKc4AfBt0JWKtn0=;
        b=A0g+Naq5rqJ9Cs2giOBTZjjulT0duriTliOYSH3ldo7kPZbW5yCn1XnvcowHSGqAAZ
         kGJStfTHiQtfoPDwyrV2AWRHX/AL2/NBKVs7ibFvUZsCBQv3Z5/LJ2Ghm3mVH8vC/QeA
         opNTO5NIIk1y0P7u1sNcOcr6ZwRZTT+BxRmpOQBARbJQSS+uwZtJpjXjxjcFDd3uQ1Kd
         UiVWHPr24OIfPTIhUgNHPMuPRMSRsrCgbZA5fTU/AA+nzPHLjOT4P7iDt+GS0fqZKsl/
         2YFMnj9frUReO2aUfe8lQpdAnXTComuT1am2M7nIc0BC7dz7XFRpw+cGJ7L0Isy7GJKI
         tsLA==
X-Forwarded-Encrypted: i=1; AFNElJ/izJ+njWfBSwmn/7rUUpiHURLXdltmYzlaH/vrWT6qqkoOZ2hZ6ZV35nt6b+ckOcY55BiborScis0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzBM/Eqj6CpJPMzDsUhXDsWBKNRNler1r+yT3FXe2YU6Ur3f1lT
	lIv/O7Uai1DiLNBJcdzivOWcRVNSlg4uE7Q4e0R6/OtE7oVyw+TpmIZoeJsKeTUn
X-Gm-Gg: AeBDietNmZN2INgM6uQxB3/ZVf9bCro4WEp1hlJP5ylfjpumVdzdzeqT1AiWxKFeK18
	5GpmPSVUUd5UJhbdqQKbugf7h0/lBQin4eD1YpIwoY19IjtrMT/jT20c31SjEnfYst0vUSv0v7v
	lR8LiVaCftu31mIoajphOLriXqJBzPK3QzTdtYmJBgKycw5yy3CVbQxjKZ1ogw9EqdDMV47YikX
	JnPuGxN0clVA6A92eSSttgecOV/MkQGZIJfN8I+tZHSydbUSBHw0iBaWvycdIBcADyCeR9LlWNH
	RDJ0eelG05i9z9zyULdWitFiSNMUo95sEKZAwTZ3MCXopUHfJ1u2NEz4GsuweKBGUFlYqSvLW58
	A2J2qcQP7PBf6+1iDCBhkeULP+q5rb/pPlrbdmIGVgwyc20Ny8ZPEOxkaoJsi1pSsSabJ7Q4fv1
	oU5fIDJ3Jiwvw2Qtww8IRLIn40wSHkJCoTqamUHmSRYLcPZfsNUOOORV+2MiQ=
X-Received: by 2002:a05:6000:440a:b0:43e:ad44:c1c7 with SMTP id ffacd0b85a97d-43fe409dee4mr15551117f8f.29.1776723931484;
        Mon, 20 Apr 2026 15:25:31 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a166sm31616973f8f.19.2026.04.20.15.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:25:31 -0700 (PDT)
Date: Tue, 21 Apr 2026 00:25:29 +0200
From: =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}:
 Document LANDLOCK_CREATE_RULESET_ERRATA
Message-ID: <20260420.78a6b7e34d00@gnoack.org>
References: <20260413193446.24328-2-gnoack3000@gmail.com>
 <20260413193446.24328-4-gnoack3000@gmail.com>
 <aeU009YvtkZvFyeJ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aeU009YvtkZvFyeJ@devuan>
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5349-lists,linux-man=lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6FAB6434961
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Alejandro,

On Sun, Apr 19, 2026 at 10:11:55PM +0200, Alejandro Colomar wrote:
> On 2026-04-13T21:34:46+0200, Günther Noack wrote:
> > Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
> > bitmask of fixed issues for the current Landlock ABI version.
> > 
> > This mechanism was introduced in Linux 6.15, but backported to all
> > older kernel releases where these errata fixes were backported to.
> > On official Linux kernel releases, if landlock_create_ruleset() with
> > LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
> > the case where none of the known errata have been fixed.
> > 
> > Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> > ---
> >  man/man2/landlock_create_ruleset.2 | 25 ++++++++++++++++++++++++-
> >  1 file changed, 24 insertions(+), 1 deletion(-)
> > 
> > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
> > index 7bca831cbd65..90d0341d2682 100644
> > --- a/man/man2/landlock_create_ruleset.2
> > +++ b/man/man2/landlock_create_ruleset.2
> > @@ -129,11 +129,34 @@ version.
> >  Unless noted otherwise,
> >  all features documented in these man pages are available with the
> >  version 1.
> > +.TP
> > +.B LANDLOCK_CREATE_RULESET_ERRATA
> > +If
> > +.I attr
> > +is NULL and
> > +.I size
> > +is 0,
> 
> You don't say what happens otherwise.  Is it an error?  If so, you
> should say so; or rather, specify that they must be NULL and 0, instead
> of having a condition.

Yes, good point that the explanation is a bit incomplete.

The "If attr is NULL and size is 0, ..." formulation is found in the
man pages only and I copied it from LANDLOCK_CREATE_RULESET_VERSION
which started the same way.  Let me switch to a slightly clearer
format where the docs for LANDLOCK_CREATE_RULESET_VERSION and
LANDLOCK_CREATE_RULESET_ERRATA just explain what is returned and I
explain below these two tagged paragraphs that they both require
attr=NULL and size=0.  I'll use the same formulation as in the kernel
docs [1]:

    If LANDLOCK_CREATE_RULESET_VERSION or
    LANDLOCK_CREATE_RULESET_ERRATA is set, then attr must be NULL and
    size must be 0.

(Done.)

> > then the returned value is a bitmask of fixed issues
> > +for the current Landlock ABI version.
> > +If bit N is set (i.e.,
> > +.IR "errata & (1 << (N - 1))" ),
> > +then erratum N has been fixed in the running kernel.
> 
> Are those bits documented anywhere?

Yes, in https://docs.kernel.org/userspace-api/landlock.html#landlock-errata.

It feels a bit awkward to copy these explanations into the manpage, as
they are lengthy, and because they are errata, any user interested in
them should ideally consult the most up to date version in the kernel
docs.  I'll add a link to it.

> > +.IP
> > +In addition to ABI versions, Landlock's errata mechanism tracks fixes
> 
> Please use semantic newlines.
> 
> > +for issues that may affect backwards compatibility
> > +or require userspace awareness.
> 
> I'd reflow the above as:
> 
> 	In addition to ABI versions,
> 	Landlock's errata mechanism
> 	tracks fixes for issues that
> 	may affect backwards compatibility
> 	or require user-space awareness.

Done.


> > +.IP
> > +Only check errata if your application specifically relies on behavior
> > +that changed due to the fix.
> 
> > +The fixes generally make Landlock less restrictive or more correct,
> > +not more restrictive.
> 
> This sentence seems inconsistent.  Is more correct the same as less
> restrictive?  Otherwise, more correct could imply more restrictive in
> some cases.  If more correct *always* means less restrictive, it should
> be parenthesized.  If it doesn't, then I'm not convinced by the
> sentence.

I copied the sentence from
https://docs.kernel.org/userspace-api/landlock.html#landlock-errata

For Landlock, ABI backwards compatibility means two things:

* Existing programs keep working (that means that the interpretation
  of the enforced Landlock policies can not get stricter)
* When a process enforces a policy, the policy still needs to enforce
  what the policy meant to enforce.

I can see that the phrasing of this sentence is a bit confusing. Let
me drop it.

> 
> > +.IP
> > +This flag is available on Linux versions where errata were fixed.
> 
> Is it possible that future Linux versions don't have any errata that
> were fixed?  If so, does this mean that it won't be available then?

No, the errata numbers are stable over time and have to accumulate, as
they too are part of the ABI.  When we have an erratum, it has
generally been backported to all stable releases where it applied.  As
we have had erratums that went all the way back to the oldest
Landlock-enabled stable release, all Landlock-enabled kernels in their
latest bugfix versions have this flag and will return some subset of
the existing errata.

I added a short sentence to explain that this can be expected in all
newer stable kernel bugfix releases where Landlock is supported.

I'll send a V2.

Thanks for the review!
–Günther


[1] https://docs.kernel.org/userspace-api/landlock.html#c.sys_landlock_create_ruleset

