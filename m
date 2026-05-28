Return-Path: <linux-man+bounces-5623-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIVvK0a3GGqkmQgAu9opvQ
	(envelope-from <linux-man+bounces-5623-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 23:44:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A435FA871
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 23:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1FFAC301B71E
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 21:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C27E35DA65;
	Thu, 28 May 2026 21:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="szf2Gbo3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F040034D382
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 21:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780004617; cv=pass; b=lirzv7gn9P2h73CQqfRsp54ZL4gBit5P0MMfk1/Qsq0Guhf4vieb6a2mDWU0tMKlX+064mHc2QKi4b6hLTOToxOyL8wmk9Y8rNbHiLik+UqzgUC1WUwaw8ZaFvFHVUriIaQOUNbkgfJdHFgb7mCD2E4rNPIdCmsWN7q2mj6d4QU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780004617; c=relaxed/simple;
	bh=BrBSB2QHAVdRnNRkDILpBzHtLCOBll7mJHwNKrNsVrI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gh3SXg3LyBJ1a+FFBKwRssvpbFPAeuPGDC8+0nKBaUzN3vYRclkDrphh/g839jsd3Nh5NHQOFGTkIqZVTsOnDmuffjZ8DyIWejXexAPKPYF3o812okk9JusC5Bu1d78ACQAmCrGEUjpDhlgoBFrNXyVWIMElwM/I0OtmSfqJGTA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=szf2Gbo3; arc=pass smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-3942e9977a5so124919571fa.1
        for <linux-man@vger.kernel.org>; Thu, 28 May 2026 14:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780004614; cv=none;
        d=google.com; s=arc-20240605;
        b=QJTsYPI43+6VLgaCullutWxA694WkIsLoJcy+IIxcaxoHj6SlQ5Q3HjkFdUQjuFzfA
         jtxGO8/gbCeUoSPakmF0WAfM1P/hIjj06O1Oa+g1vdJFQDURDbisUE7mh2oFtAyMZ7NX
         8r8hyZbZHuF8zo+su+RqNd/ps9nREAO3eKKxnBy4vvqv7E/9e4p2mgn/R5y0qP+fHAk3
         ypX3UCj/SIg8ldh3/akUinIBncs2usS6O8OwWJhrtP2CIp2ODvILhZGSf2gY1BkAsQY/
         ezp0mq8CECi/9BORDu47uW9n3zLOLlMUoEEnkaYXwVVoi7hq89yIoMT4vtsNcCKx4Dr4
         2goA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u0lbNkgK3oQaOx+gThW79dkrzaxzAw4gSC523ff6vxo=;
        fh=Hdi0u/wnM58lmppLuEkfldMErgN9yW5wfQWnVjT9ywk=;
        b=j97atiAdEmXsapAjhPcTtClB8TaDh44S9upmnf/74cKlSKvy94cD+nvaaRmKg5lNN3
         9PZRs0QeMJuWEjCN/TVae36Mdiz6p9bSfDsYjJWGsESq0FODReaIsbToE46PqNld51HW
         YVCnZoCdRIMQLIC0NV2Ssi8CAa5mL3mjKBgVgGNKM3nhENKMa0KiWwJq1bR2MlQl99ub
         /SVwg/sxH5+q/reUM/+2Z7k6z44kcfteZQcFeW5XUbmBbwrl+rfb3yS3oYAi4VoHWpBZ
         vnbw9kwU+UNPsBuvvpP7DtGzgYBN6XTLpIWhopzIFbc4jastcs10X/RSkc8qrckcto8s
         3pcg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780004614; x=1780609414; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u0lbNkgK3oQaOx+gThW79dkrzaxzAw4gSC523ff6vxo=;
        b=szf2Gbo36wI9xpX4ldaFWi1+lyRlFZ3AsC3o8blZRv0I3GE7VGDxUh8womGGtdxs7g
         hf0uK/wskruBfJiP4VRTyXLFj2slQL5bhdcXH9f36cpIvCE3VG5nn/EH9Kk/O/6kkmMu
         d5ZR65t4Jjwy+kM3yXtxL5XKnSAGZmPqY5Ok+5gsDlBbKyS9TacEoSsqw8yern/WCB45
         jZxPdYJ74s7CfulaZG0o9dGXM184Dk2aLPxqxOu5QJFSzQZtnFJ1Km8VX7KLcpyoAFPH
         XDUVDsFglogFUclsrpxsvxJPCJNASEeFFF5jJvpnj3fNNL4jHjqwPXafD3z2qrCVLSjy
         qWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780004614; x=1780609414;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u0lbNkgK3oQaOx+gThW79dkrzaxzAw4gSC523ff6vxo=;
        b=CzvHZcvc0no2PtRdsXNXLC6ALAO2yLAIz2+38WMRacb69thW/S7/91rd+CS8aTWQOQ
         QGecLdUMx1QQ/VN8PEdPlw3sCdRvpov4G7dnZV6YlLa2M1j/rNPqsu4SADh5yOY9n44v
         31CubuywPNzfO41a99QeZaK2wpeGzpQM50JVh1FCBcZ1LBre5VSkCgR0uAXvQVgjFcor
         nP7zhUDuDtap9vJUE04R+YPxbFOdYnErxM6m/q9kc8JOy9rrU/gLf2LHWTbVmLvrmXdR
         HnZ8SBihEvtyWRCLY1qNJ7pto2gJZU+VgaCo2QV1bJt80StwSmdlBP6rxJ5xLvn5D7so
         nGew==
X-Forwarded-Encrypted: i=1; AFNElJ8CpMHlQEJxz5fnGXMGJVtpnnFriRZmamuWh28XRSAAfRIQ5dHMDnnMjYim+M1VCS+FLvH33tJx/eA=@vger.kernel.org
X-Gm-Message-State: AOJu0YwmnEzNV2SMytE+4tD9Tb+ykb75304Q3CxiAI1sm1PvPCijJTg0
	JxIpyQEumEsddFL4Se1bJbHDujlq7KRkhKaK9K6QqtKAQTBZmc06WD3vzhshjA3zGWIKmLVlN+l
	VZbBg2mXA12Gwog4j3cX9L7IDYhStwuc=
X-Gm-Gg: Acq92OEnV13uCUaxcmBVAw9jHGPQeAVC/ouy9lF9w3T+lMTUu5+HBRjN4QAmV0nuH7Z
	VgKIZlCZSwL7gK+5dq+R7fLmXSNzMkiFLhuHpICLJRu5Hc8G/ezzVuh21J8FGI3VvD8MCKbXesb
	ktCPxEn0ZfMdBNlvgkqyXwgNiSsIG4vfqCcYC54/PYQIF0qdM1ZRSgbinw0yxMXH8p2Zmg1I9cG
	sXPeUTuah2ExNPiTfEB9/SAUwaorynd3y5Tsd4IYDAlFa+zVwMJKlayLrrOLyOdxEEvHcuWgwq4
	QKnOzYvwEYn0A43xwa4JlnjfuocKhHw1MXm0RfbVKQY/dn9J
X-Received: by 2002:a05:6512:3e0f:b0:5a8:89d6:93cf with SMTP id
 2adb3069b0e04-5aa590110b5mr45703e87.17.1780004613852; Thu, 28 May 2026
 14:43:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan> <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan> <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
 <23a5740a-5de6-487d-b976-71e16205b1cf@redhat.com> <ahisWSsAtm8J19RX@devuan>
In-Reply-To: <ahisWSsAtm8J19RX@devuan>
From: Mark Harris <mark.hsj@gmail.com>
Date: Thu, 28 May 2026 14:43:21 -0700
X-Gm-Features: AVHnY4K39OwW5g9UGCJm89Be9-qR2t4B-Lm7O1A_twARS9z9RdEQ_e5pDiWSmyc
Message-ID: <CAMdZqKER+2XNhYt6VzVUijgMPYw1_fsn3Hh-+uzLN+joqzPp0A@mail.gmail.com>
Subject: Re: Mangled function prototypes (phantom arguments)
To: Alejandro Colomar <alx@kernel.org>
Cc: "Carlos O'Donell" <carlos@redhat.com>, "Michael Kerrisk (man7.org)" <mtk@man7.org>, 
	linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5623-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[markhsj@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 10A435FA871
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Alejandro Colomar wrote:
>
> Hi Carlos,
>
> On 2026-05-28T14:39:15-0400, Carlos O'Donell wrote:
> > On 5/28/26 9:06 AM, Michael Kerrisk (man7.org) wrote:
> > > I don't think the Linux system call and C library manual pages are a
> > > good place to promote this obscure GNU feature. It is confusing
> > > people, including me. (I came to making this report because several
> > > people have reported this "bug" on various pages rendered at
> > > man7.org.)
> > >
> > > Please consider reverting these changes. These markings use
> > > little-understood, nonportable syntax. The manual page synopses should
> > > be in standard, portable C that is *easy* to understand.
> >
> > I agree with Michael.
> >
> > I think these changes should be reverted, but it's a question of
> > goals and values for the project, and the purpose of the SYNOPSIS.
> >
> > My view was always that they were the simplest expression of the
> > interface that the widest possible audience could understand, and
> > that seems to align with Michael's view.
>
> That doesn't provide much value, IMHO.  My opinion of the SYNOPSIS is
> that it's a quick reminder of how a function should be used.

I suggest a compromise.  Keep the array sizes, which are the part that
you claim adds value, and drop the forward declarations, which are the
part that confuses people.  So for example:

ssize_t read(int fd, void buf[count], size_t count);

Yes, count is used before its definition, but the goal is not to write
a valid function declaration; the existing one being invalid is
evidence of that.  It is difficult to imagine that anyone would have
trouble finding the definition of count without a forward declaration,
unless they are a compiler in which case they would also be tripped up
by the array-of-void.

 - Mark

