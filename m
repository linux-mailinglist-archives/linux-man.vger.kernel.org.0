Return-Path: <linux-man+bounces-5242-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFkmDXWHqmmjTAEAu9opvQ
	(envelope-from <linux-man+bounces-5242-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 06 Mar 2026 08:51:17 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FBC21CA0B
	for <lists+linux-man@lfdr.de>; Fri, 06 Mar 2026 08:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C567230117E8
	for <lists+linux-man@lfdr.de>; Fri,  6 Mar 2026 07:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0998433067F;
	Fri,  6 Mar 2026 07:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nGyzutGK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A382E334685
	for <linux-man@vger.kernel.org>; Fri,  6 Mar 2026 07:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772783472; cv=none; b=KCGZs4dwEMYMaqyr1agKUWVQfuZIwVcZUC4TXBWBUX4mriTl/z0DsceOsz+BlpG89wum7YkYcjNBGcO7wzsGAGbAzaQ8FGHZuwtw294TTd50SRAb38bjKDHrnTLSrsSX1o3H1cCYgo5oZVA0XUxjUZIqUtRPAVRyDpUDEcWftzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772783472; c=relaxed/simple;
	bh=8AkXqGMXuu5Jb6MzJp4/2VAqJZtxWcNL3wjTf+K9WeE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=s904s9Ma3jZ49rVOchU5zmGCWZKsIL2Csruz1iMUJTROhet/82EVxLREndXsfPd+UinCEl9wXaBsgAcKLc38wsJIvX0MQbZrGAdjUaYZDd3VuLyvv8HholyhgtUrRpUBA5apiSPslq2G6nLsq0Wb+rGY0X8Bt0sSvsoA5fGVmlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nGyzutGK; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3590042fa8eso5477266a91.1
        for <linux-man@vger.kernel.org>; Thu, 05 Mar 2026 23:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772783471; x=1773388271; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOZw9GYYmIkLbh3GRopPX2ayTgH4KaepuXViYt6fWFI=;
        b=nGyzutGKbKE00BWKS6GlunIPJ5aos+9fvUm11lbhkRKRGRneVUFx1A34G4h4ZtH3Vx
         MDzLjBgfMV+0FxDF4PYV8JZcklBa+HJIOnRgYRi5R/1SVExNZtVxuGYE/gPEIz+FMQUp
         K/2B+S9jcDrizJZGGIwfEHTfyxSYgL1RnBC+uOy18SBm0OuvSAViieaUV4NxWeQKIdDQ
         T++Yl7BbGdHsvSM0NvC+nECv6n79iI7GIwpkmk2Wn6zVJnwAajunHXXbHroqc1Hkcm7J
         5kpnaXgNbVXT+zk1eOjP9bWNU+ebbpfiUGwdy+nt5uPf4LB5oYfJwGKimQPR19cmVNyc
         3+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772783471; x=1773388271;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iOZw9GYYmIkLbh3GRopPX2ayTgH4KaepuXViYt6fWFI=;
        b=jcZ+IwaUKnAWCRZO/bNSapjrzaM5DDcpJahy6xjCNS/UBnjb4kAaWCC8ZSQi43mP1w
         di8nlLqS9+M9aeHy/AxNnm/WSY7KSTmQJ1TpSIqahaxyMGpXyptZjmlwiIELjDMciBdZ
         9Yl1XmaNtMlfKDN4RslYEMOCNDDm4fP/i/14S7U4/1eHQQ+8FSI1bfSG7GWHICifUdDp
         0XMbPuhAjAgRQLxbiCxueSK0Dy6u7sIHNk4Xp9Xgwo8hdiqp5APfNOXt1232cgR6N3F3
         gsDjHsVXY5JMCDtAasNwzOXgnQDIgJ/boySpixd8hrkbbawvdWIMcHB6myedoQGCX5Sh
         mkWw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ5hDur5M/7Sg4O3pja9nvOJ2qGGuSBJrT/TcuOHMlZbWJEKDy3hSVEwLV1Y0SKesOonjim3fBKes=@vger.kernel.org
X-Gm-Message-State: AOJu0YzzCywP4Usb2vzClw9TZecwk+GiW0vgQEyAPD9o6YI3BOVfkPRY
	AXKgnFUlmYysGKBmkcpbWHLp6MjdUQSMKgzvA71wdTzDWgyoQWa79mIY
X-Gm-Gg: ATEYQzzCZHcW4DzOFEF7QT38BQyUOOeMOXPRzzoWhHtg7KHd54iSIwsyR7t4n6U1Mtd
	LjSKzSTgv2jt0/nT9hKEtHHDr76sLVK+LscUToD/C1kNJIZxPpoQdbQGSQkXBSLzAT82NV6jOvm
	yqaRrQINUH5VJ0Uay/wNITA7uxs2HCX+mo8KOSKNRcHi8bpl17/3kljdEmf1Zziq0BuRwzCxstK
	LrHlgoHeKdRryRMxSRgLx/46W5lwN8eCtWiI9x8it8AuodV96LwsHlArR759UGuUAX7oem+FpK+
	kbAscozPGyksTy3PCdqbwl3D/CRYXoa2KMVLGG0jMXr0KeA8LOvEUadE8zQWXdDfCZH+sFmYa8R
	URkNbbH5f81ps9cTpTWj3wpvZUAeyinC6LakIllwpkUjdfRDlDHc3JPZPbkpXS2YzpIeipryC3L
	pEzpHSlLosJR22w2F0MOe6D6bbUckoQhca4GAaV9cP4K0iK28r9FnQdV2MBMM=
X-Received: by 2002:a17:90b:17cb:b0:359:7906:d996 with SMTP id 98e67ed59e1d1-359be343fe5mr1239835a91.23.1772783470742;
        Thu, 05 Mar 2026 23:51:10 -0800 (PST)
Received: from localhost ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359b2d50ebdsm4092347a91.5.2026.03.05.23.51.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 23:51:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Mar 2026 13:21:03 +0530
Message-Id: <DGVJAG7F6HJ1.3ST8XEXV8BYYY@gmail.com>
Cc: <avagin@gmail.com>, <brauner@kernel.org>, <criu@lists.linux.dev>,
 <jlayton@kernel.org>, <josef@toxicpanda.com>, <linux-man@vger.kernel.org>,
 <miklos@szeredi.hu>, <ptikhomirov@virtuozzo.com>, "Aleksa Sarai"
 <cyphar@cyphar.com>, "Askar Safin" <safinaskar@gmail.com>
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
From: "Bhavik Sachdev" <b.sachdev1904@gmail.com>
To: "Alejandro Colomar" <alx@kernel.org>, "Bhavik Sachdev"
 <b.sachdev1904@gmail.com>, <g.branden.robinson@gmail.com>
X-Mailer: aerc 0.21.0
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com> <aahG1Mb0oRBEG6sy@devuan> <aam6Yn6ZJhM9PQup@devuan>
In-Reply-To: <aam6Yn6ZJhM9PQup@devuan>
X-Rspamd-Queue-Id: C2FBC21CA0B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5242-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com,cyphar.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Thu Mar 5, 2026 at 10:49 PM IST, Alejandro Colomar wrote:
> Hi,
>
> On 2026-03-04T15:58:21+0100, Alejandro Colomar wrote:
>> Hi Bhavik,
>>=20
>> Sorry for the delay; I had an issue with my mail provider.  It's now
>> resolved.
>>=20
>> On 2026-02-26T08:40:16+0530, Bhavik Sachdev wrote:
>> > STATMOUNT_BY_FD introduces the ability to get information about a moun=
t
>> > using a fd on the mount. This functionality is currently in linux-next
>> > [1].
>> >=20
>> > Link [1]:
>> > <https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/?h=3Dnext-20260126&id=3Dd5bc4e31f2a3f301b4214858bec834c67bb2be5c>
>> >=20
>> > Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
>> > Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771870334.git.b=
.sachdev1904@gmail.com>
>> > Message-ID: <7d4b22c595feeadb3be6df8a8781344597120f7e.1771870502.git.b=
.sachdev1904@gmail.com>
>
> I've applied the patch.  I've amended the few formatting issues I
> reported below.  Since the only important issue was the wording one, and
> Askar confirmed it's good, I took the patch.
>

Thanks Alex, Askar and Aleksa for taking a look :)

> BTW, Branden, I'm getting a diagnostic from groff:
>
> 	TROFF		.tmp/man/man2/statmount.2.pdf.set
> 	! (troff -mandoc -Tpdf -wbreak -rS12 -rU0  <.tmp/man/man2/statmount.2.pd=
f.troff 2>&1 >.tmp/man/man2/statmount.2.pdf.set) \
> 	| grep ^ >&2
> 	.tmp/man/man2/statmount.2:155: warning: table row does not fit on page 2
>
> But the PDF looks good to me.  Would you mind looking at that page and
> telling me what you'd do with that diagnostic, and whether I should care
> about it?
>
>
> Have a lovely day!
> Alex
>
>> > ---
>> > Hey Alex!
>> >=20
>> > > Also, should we say the same as elsewhere?:
>> > >	"It is an ORed combination of the following constants"
>> > > and then a list which contains only STATMOUNT_BY_FD?
>> >=20
>> > I am not really sure that statmount flags will be a ORed combination i=
n
>> > the future i.e (STATMOUNT_BY_FD | STATMOUNT_NEW_FLAG) would be somethi=
ng
>> > that is valid.
>> >=20
>> > I think for now, it is better we don't do that.
>> >=20
>> > Thanks,
>> > Bhavik
>> >=20
>> >  man/man2/statmount.2 | 40 ++++++++++++++++++++++++++++++++++++++--
>> >  1 file changed, 38 insertions(+), 2 deletions(-)
>> >=20
>> > diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
>> > index 5ac96796c..1556342de 100644
>> > --- a/man/man2/statmount.2
>> > +++ b/man/man2/statmount.2
>> > @@ -24,7 +24,10 @@ .SH SYNOPSIS
>> >  .EX
>> >  .B struct mnt_id_req {
>> >  .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
>> > -.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id i=
n */"
>> > +.BR "    union {"
>> > +.BR "           __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the m=
nt_id in */"
>> > +.BR "           __u32  mnt_fd;" "      /* fd on the mount being queri=
ed */"
>> > +.BR "    };"
>> >  .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
>> >  .BR "    __u64  param;" "       /* ORed combination of the STATMOUNT_=
 constants */"
>> >  .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_=
id in */"
>> > @@ -89,7 +92,8 @@ .SH DESCRIPTION
>> >  .I bufsize
>> >  with the fields filled in as described below.
>> >  .I flags
>> > -must be 0.
>> > +must either be 0 or
>> > +.BR STATMOUNT_BY_FD .
>> >  .P
>> >  (Note that reserved space and padding is omitted.)
>> >  .SS The mnt_id_req structure
>> > @@ -110,6 +114,27 @@ .SS The mnt_id_req structure
>> >  .I req.mnt_id
>> >  (since Linux 6.18).
>> >  .P
>> > +.I req.mnt_fd
>> > +is a file descriptor on a mount.
>>=20
>> Is this the same as a "mount object file descriptor" as describer in
>> fsopen(2)?  If so, we should use the same language, I think.
>>=20
>> CC +=3D Aleksa, Askar
>>=20
>> > +If
>> > +.B STATMOUNT_BY_FD
>> > +flag is specified,
>> > +.I req.mnt_id
>> > +and
>> > +.I req.mnt_ns_id
>> > +are zeroed, the function will return information about the mount the =
fd is on
>>=20
>> We always spell "file descriptor", not fd.
>>=20
>> Aleksa, Askar, would you mind reviewing this patch?  You may have
>> comments on some specific terms used here, as they might relate to
>> fsopen(2).
>>=20
>> > +(Since Linux 7.0).
>>=20
>> s/Since/since/
>>=20
>> > +.P
>> > +The fd can also be on a mount that has been lazily unmounted (see
>> > +.BR umount2 (2)
>> > +with
>> > +.BR MNT_DETACH ).
>> > +In this case,
>> > +.BR STATMOUNT_MNT_POINT
>>=20
>> s/BR/B/
>>=20
>> BR is for alternating bold and roman.
>>=20
>>=20
>> Other than the questios/doubts about mounts and file descriptors, and
>> these minor formatting/source issues (which I would have amended
>> otherwise), the patch looks good to me.
>>=20
>>=20
>> Have a lovely day!
>> Alex
>>=20
>> > +and
>> > +.BR STATMOUNT_MNT_NS_ID
>> > +will be unset, since an unmounted mount is no longer a part of the fi=
lesystem.
>> > +.P
>> >  .I req.mnt_id
>> >  can be obtained from either
>> >  .BR statx (2)
>> > @@ -392,6 +417,17 @@ .SH ERRORS
>> >  .I req.mnt_ns_fd
>> >  were set.
>> >  .TP
>> > +.B EINVAL
>> > +.I req.mnt_id
>> > +or
>> > +.I req.mnt_ns_id
>> > +was specified alongside
>> > +.IR req.mnt_fd .
>> > +.TP
>> > +.B EBADF
>> > +.I req.mnt_fd
>> > +is an invalid file descriptor.
>> > +.TP
>> >  .B E2BIG
>> >  .I req
>> >  is too large.
>> > --=20
>> > 2.53.0
>> >=20
>>=20
>> --=20
>> <https://www.alejandro-colomar.es>


