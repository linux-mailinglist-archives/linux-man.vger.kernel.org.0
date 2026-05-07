Return-Path: <linux-man+bounces-5470-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PRFOUQE/WmIWgAAu9opvQ
	(envelope-from <linux-man+bounces-5470-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:29:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 674B94EF476
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 23:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 572903015A5A
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 21:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B25EA344DB5;
	Thu,  7 May 2026 21:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bSaEv0ZA";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="aBtX4I8k"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D5344DA9
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 21:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=170.10.129.124
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778189376; cv=pass; b=uNmTj2XjE3TVALIyeK5WCqzkyK7IN2/jicpR5NBRVt75zkUkZqkAlcpV/yvVPfDaZmk9wKB6HNmcgr8SnrgMSjuxA8k8mDf82611hGxnQdkchedGSmCa2lvFKiA5jrs0uviQRX687LIybcEODQL0WfjJtAZqCHkCReWhgKAeg+w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778189376; c=relaxed/simple;
	bh=QZ5bbfLDNirB0CeW9TFoLSMaezafKJ+WmKfH93b8K88=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qbVVjvWmYysdQMzZxfOH6B3mrXevx+wg9KNyCcktVG2TT9qSurmAO/8dHWt9gY4QfpaUeZl8CXbB6JqQq9DzNb39eicmHGpImIw7Mum2ced2sCY13iopUNgVpuTGs38Ar3vNYuVjow92hA3SyHu0F//CIatBjpEQAAQcgqQyFhM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bSaEv0ZA; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=aBtX4I8k; arc=pass smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778189374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wjifOxFkJAoVdbor1ku4V8CbAVTu+NTqs5fVXPGe6Ig=;
	b=bSaEv0ZAhexl3qlgzIR721uMhC/O55a5dX2fdp5BjKFcnlLJBPDUjQwIaghwV5nVYJZ0mP
	dFI1OGfPi/1XxoRUJLSdZ4IcQvF/9tNoaIta+pK9LR+aj8sb8myNEE5YXQ5Rh8/zQf5NKF
	2Z9q8GndGlyIEA4mhC76W5AFcj7WXC0=
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com
 [209.85.221.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-271-TGEB1nRaPkO26sCS1ChVlA-1; Thu, 07 May 2026 17:29:32 -0400
X-MC-Unique: TGEB1nRaPkO26sCS1ChVlA-1
X-Mimecast-MFC-AGG-ID: TGEB1nRaPkO26sCS1ChVlA_1778189372
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-57548c75628so2296713e0c.0
        for <linux-man@vger.kernel.org>; Thu, 07 May 2026 14:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778189372; cv=none;
        d=google.com; s=arc-20240605;
        b=PVMERY6c/ncWUDYZ3yAJ5t0vSZCK+61r7EEnL7lY8HWBAD0+AmAeuswk1+JM6akADb
         tn7e1LuyG3jQlQoml7LLp4HdMoPJ9mG5Zz4Fw5f+FXw1eGagIP4RuoRltsUXAicEV+4h
         PmMGdE/0KaklatCq/c+M+lJnCttDEFmPEdRKPDxlWsFe9A7ROq4OF8dhFFxvj4ID7+QF
         iKssvGhqMy3vnC3pkUVklx9Jrvh7AVPdcEELhcwiZibYmldeFgVtZ8TnkqpLimj6pE+R
         pfo08WF7NyrrtMdRxD1wLT7uIcYTvAGw3AiqPkqUXjMbJgEG3QSzVYSCxECcLuwaJLP+
         JpdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wjifOxFkJAoVdbor1ku4V8CbAVTu+NTqs5fVXPGe6Ig=;
        fh=5k17WDmQXREBmA2Mj4ro86jElk1nD7gEhzhadtvWMzc=;
        b=EP/mg5pzEK63B9vNsb293YfM9Rg721MXhy09Mo4Owv4hqtTfbN4KsSKC6PiOe7h52a
         Br1jd4fDYCHe8CKx7qVZf+R3KQZU/F4nGvaQ1yYE3MyMo5Es+nwmizJohwWy0MsF3XuS
         rXR1ZN87KXlXSNzaoLFeW4w4nwL88WofhQSXEVkQpRjfBhXpT2qPvKmWxtBDKi0qv4ZO
         k0rT5kDRnki0u0IkzlmtXEy+q8uwXvb7F65xR2ye7+s3Y6Vv6bSlRpGmx8gitbBuGChV
         SYUWAuXG7C+ejuFVDNkzcz6cSuwbTkNn6rTNrYwhlrulyp/qxxeChrhu7iV878Yhdysn
         u5pA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1778189372; x=1778794172; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjifOxFkJAoVdbor1ku4V8CbAVTu+NTqs5fVXPGe6Ig=;
        b=aBtX4I8kaargpyoGICix1VKzkug/7V+NZiENejzKqNYI7iYtAN7f7dglEViQmOHx83
         7an5KQX19J/9ZtmK5paLYSVKXUC0YQfveuceF6czLddcku7MhnSfEgO001nqFX0OQn/T
         8yy+CXb4WBkEcOrEJoKHrBH74B3MUxIWSCFhaWL16R26X/cHvWkPqgohiyR4qVUXb/nA
         9VNKQkWpyXuHuPsHW33ywcjK7ZAym9IMlWn4MliphdrHsjYwdEodClMsZmO1wbROZylB
         OvXdT10RFm2+CjAhQ2yxKKA7cQSc8eXAwXx+kmmEWbfO4sve/iemgYnvCWDKpMXAK4Dp
         9A6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778189372; x=1778794172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wjifOxFkJAoVdbor1ku4V8CbAVTu+NTqs5fVXPGe6Ig=;
        b=gIBNmCiScwhYgN3MkPJGe6cKZI6H44Hu45VL3JIHIdiVDFDXL22wVvF6aKDUn19eF4
         H5lhhOf8JYvay3kKqNtdKUF5X23DLHoe2BksRrjacsfWXfanjNV8ZOBnBp46Yy7Irv1r
         xp0rOKsqNu5yFoDiLA8/+kVwqtrlmn/ptee2d+lSigHVzIj03rbBZ48UJEddZugLE2kB
         vWAfq1DkvqkjWPIdo1Jb70AJfV1c/hPPIe9Otwza0jNxuJhEE9MtWG6K+Jaww83dh1nn
         Qfdi7LiTRIgsTV7Pk1Kkaq/+NccA/c1EIQMyv5RwBeblZXlP6G9j/BjVYtZ6HqY5T4sx
         gpKQ==
X-Gm-Message-State: AOJu0Yy5rvO0dXcjGS9bVRdOVT6gxkh08SPX38RK3eGBiR+Id3lWJLWD
	CvBpYUWEiMRAQsHqEgPC/e6CM9AhAmDBMu0dlQb+8yKTGzkLeY8mXyBTibnGs+enG/lC/+XG2QQ
	HFpja6dWdJstu0r5qMvFVF52fp3mal6paezBH7jQPbVXOYT/YLDsJ7PaEdfcLBiqaJs1TL5OhJ0
	9jTAKrdMxmss3CDEiLMdY3r1N35RNO/83NCVc5t3rlsFFg
X-Gm-Gg: AeBDietGfYy6IcfrgIbICOmZ8U6rxMqpzv6iyzSIh12cs/QJ0xaUktDYcthiY17/Ger
	oWPqo/+iDAsLq8VLXpqPQ54U9TDAFBnwp2EkQGNjF03pH5CFUfeKO+mKLxDF5U4wWNMbwRoor96
	tfhtxzGhnIsAaCxslw2Hzbhwf2AEqoHCHJO5KVc7a9snfN064PjaiLPPYT6hy0+erydttMmSGdB
	9HSrPcYxuG+xFRa5UC4FTftbuXTQx7qW90brA==
X-Received: by 2002:a05:6122:d8c:b0:56b:9083:4331 with SMTP id 71dfb90a1353d-5755974034bmr5556589e0c.12.1778189371833;
        Thu, 07 May 2026 14:29:31 -0700 (PDT)
X-Received: by 2002:a05:6122:d8c:b0:56b:9083:4331 with SMTP id
 71dfb90a1353d-5755974034bmr5556583e0c.12.1778189371347; Thu, 07 May 2026
 14:29:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260507190508.386186-1-patsy@redhat.com> <20260507190508.386186-2-patsy@redhat.com>
 <afz6oASktRUsElC8@devuan>
In-Reply-To: <afz6oASktRUsElC8@devuan>
From: Patsy Griffin <patsy@redhat.com>
Date: Thu, 7 May 2026 17:28:55 -0400
X-Gm-Features: AVHnY4KR5FlielI_Z9gWAFjfHioo9UODfZfw_fUG06Gx5Qnmq_KnD-G0W40_QNk
Message-ID: <CAOraFgC4kVzKvZA6cX+F1pLwOYs5qcjnPAVMxF+JHns=uFfBhg@mail.gmail.com>
Subject: Re: [PATCH 2/2] man/man5/core.5: Update compression format for systemd-coredump
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Carlos O'Donell" <carlos@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 674B94EF476
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5470-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:+];
	FROM_HAS_DN(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patsy@redhat.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Action: no action

LGTM.  Thank you!



On Thu, May 7, 2026 at 4:59=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Patsy, Carlos,
>
> On 2026-05-07T15:05:08-0400, Patsy Griffin wrote:
> > As of version 246, systemd-coredump defaults to zstd compression
> > for core dumps, rather than lz4.
> >
> > Signed-off-by: Patsy Griffin <patsy@redhat.com>
> > ---
> >  man/man5/core.5 | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/man/man5/core.5 b/man/man5/core.5
> > index 4da5819b6..ee34eded3 100644
> > --- a/man/man5/core.5
> > +++ b/man/man5/core.5
> > @@ -515,9 +515,13 @@ program:
> >  In this case, core dumps will be placed in the location configured for
> >  .BR systemd\-coredump (8),
> >  typically as
> > -.BR lz4 (1)
> > -compressed files in the directory
> > +.BR zstd (1)
> > +compressed files
> > +.\" Since Systemd 246:
> > +.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
> > +in the directory
> >  .IR /var/lib/systemd/coredump/ .
> > +Compression on or off is configurable via coredump.conf(5).
>
> Thanks!  I've reformatted it, and moved the comment to the commit
> message, where it's less noisy.
>
>         commit XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
>         Author: Patsy Griffin <patsy@redhat.com>
>         Date:   2026-05-07 15:05:08 -0400
>
>             man/man5/core.5: Update compression format for systemd-coredu=
mp
>
>             As of version 246, systemd-coredump defaults to zstd compress=
ion
>             for core dumps, rather than lz4.
>
>             systemd.git ef5924aa (2020-05-04; "coredump: add zstandard su=
pport for coredumps")
>
>             Signed-off-by: Patsy Griffin <patsy@redhat.com>
>             Message-ID: <20260507190508.386186-2-patsy@redhat.com>
>             Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>             Message-ID: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
>             [alx: Minor tweaks]
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
>         diff --git a/man/man5/core.5 b/man/man5/core.5
>         index 4da5819b..7b02bd5b 100644
>         --- a/man/man5/core.5
>         +++ b/man/man5/core.5
>         @@ -515,9 +515,11 @@ .SS Core dumps and systemd
>          In this case, core dumps will be placed in the location configur=
ed for
>          .BR systemd\-coredump (8),
>          typically as
>         -.BR lz4 (1)
>         +.BR zstd (1)
>          compressed files in the directory
>          .IR /var/lib/systemd/coredump/ .
>         +Compression on or off is configurable via
>         +.BR coredump.conf (5).
>          One can list the core dumps that have been recorded by
>          .BR systemd\-coredump (8)
>          using
>
> Carlos, I've kept your Rb tag, as nothing has changed meaningfully.
> Would you all mind confirming this is okay?
>
>
> Have a lovely night!
> Alex
>
> >  One can list the core dumps that have been recorded by
> >  .BR systemd\-coredump (8)
> >  using
> > --
> > 2.51.1
> >
>
> --
> <https://www.alejandro-colomar.es>


