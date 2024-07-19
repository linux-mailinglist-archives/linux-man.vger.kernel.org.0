Return-Path: <linux-man+bounces-1490-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D27AA937856
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:19:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DFFF28233D
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0C98135A79;
	Fri, 19 Jul 2024 13:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="jiI+lzeO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E4124211
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721395071; cv=none; b=cLH4bEjTAVL/POYDHKFurP74Q7vpBtdX9SSe5lmAxEXDWp9G28Zkl4JgLlXYcSECUfOXGUaj8cevrisggk/12ScHS+Fpr8Z4cg7VtPoy+ABnPCd1TQovukd3DJc5PbprIDI6H4k0qcjLv5OQy206OtZyhNn1UQqwnHU6iJPLSaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721395071; c=relaxed/simple;
	bh=pk9Y6PEjsBy2Vvy2tA/MMgOaFHHudrAnhfA62DjQG2s=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=AIsdS2tQqVwsiac28xhgntgjXhNgvTyBlnA2RIygeeAcE2/dmcdHX8ZFAkq7yvWWr5FDdHyboHVgAfY+w0pGQkgoTUgW8noES/yozTf+qJYPZ4zvj1K2maYR+EKMOOKPgebTMQ56RB8kfn/H44u345zuhRA1rukD+Drx7tKh8Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=jiI+lzeO; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-a77df0dc240so154676566b.3
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721395068; x=1721999868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RlJeIoXzU7MC/dPO0vu5KvKW1ZZYZKn9kuy+F93MF10=;
        b=jiI+lzeO1r7VMsR2gNmBjjY1lQOxt7VnhcYTCNJlW0MAt+X0nZNx30e6cT8z6ffro7
         aNw8uO4WaLfSZsbnCm3YuC1cMdP5gi2IoxDzcsSMRsOXsRXzLY65Jo65Y0rhhCXhKJg6
         N75d/LPPG/FhJVs3Y7v9lRN3ZtKje0VBxOWJeQXnwDktyaocTPKnIADkP/iFSfqz5ove
         5gjqSAjxfTBOp/D2tMd9n/20QqzmG7JebC+6iF98lv8rbRHMO7qmMkc0L7XnAb0ULj7h
         tY5gb2ohi1AaL/u4vb7Cwg5xu+Ajp1/gLeGkj0lXlwRxg48EOf/07PfU65SRiz4B1PUX
         M8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721395068; x=1721999868;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RlJeIoXzU7MC/dPO0vu5KvKW1ZZYZKn9kuy+F93MF10=;
        b=wBjeoO4Pl5qesca6a1ySig+2iEknjDrXWEoe/W75CcgfUQxLz8dcy6kvQzwjE/7A0o
         KN4lRLeo7iWKxMH25NVyCT9i6CWmA29DGvYq2xlDoM3KdzMGJMWHD62MeYGY/ZyoLI0X
         Z5wwezKbrjFPZ6ex40AKBiIzqxa2iAdoDcW5LSwUDAhH3Re0jcJGuBCtrpH+Uwc2L6Ll
         j5QgzFuWYdcijT2aLILeVJrAZpLrzoL/1Jt/u/MoaJhtx1gIXYAFo2lv1s0NoGs+0fIa
         l8hYi3mBhGLQSieg2Hh6/S1DMOKL5AqhAhyc/EALIU8BEKf7LSKKLszfZ8EeDkMdW58u
         72vQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5PEG7iSNSyOdC4qxJ0NjzpPEZEpKbKyLIlQQZKxkFFNaDt+0cVs2/K0UKstx599zHU2qGiOUbytna1YmJ9RN6qkebp6phGYZ8
X-Gm-Message-State: AOJu0YzwvLFHTTxrPL0IOQXJMLQRXnyyIcR7nMSLQ2BYtlrHmENFkhlZ
	TlPTdSjDo0rckzaxb0X3RGGgn4DvjoIY9t9im+j1ks3VpKuUVqAZ1BeENayD3lIFl7Rc13WEJ7n
	8fg==
X-Google-Smtp-Source: AGHT+IFGSfbp4HLWUDltVpWk/ijp2ngVuS08F7DhtS5YHVM49hjXjEIgFMRxdZ6hFUsyRQfJQOzKdegBlsk=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:907:a2cb:b0:a77:fc89:e6ea with SMTP id
 a640c23a62f3a-a7a011e8448mr528866b.8.1721395067923; Fri, 19 Jul 2024 06:17:47
 -0700 (PDT)
Date: Fri, 19 Jul 2024 15:17:45 +0200
In-Reply-To: <bdtipbpybyunclnmnw5o6si6ojkp4wht35cnnu3i4b5keg2lnk@m6bn5i2xr7fl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com> <20240715155554.2791018-2-gnoack@google.com>
 <bdtipbpybyunclnmnw5o6si6ojkp4wht35cnnu3i4b5keg2lnk@m6bn5i2xr7fl>
Message-ID: <ZppneYlIzBRYAwga@google.com>
Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2024 at 06:13:24PM +0200, Alejandro Colomar wrote:
> Hi G=C3=BCnther,
>=20
> > Subject: Re: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
>=20
> s/Wording improvements/wfix/

Done.

> On Mon, Jul 15, 2024 at 03:55:50PM GMT, G=C3=BCnther Noack wrote:
> > +.IP
> > +This access right is available since the third version of the Landlock=
 ABI.
> > +.P
>=20
> Did you really want a P here?  Or maybe an IP?

Well spotted, thanks!  Done.

The de-dentation is only needed once the paragraph talks about both truncat=
e and
ioctl operations (patch 5/5).  Must have happened when I reshuffled the pat=
ch
set.  In patch 5/5 it becomes .P again.

> >  Whether an opened file can be truncated with
> >  .BR ftruncate (2)
> >  is determined during
> > @@ -97,7 +100,6 @@ using

Thanks,
=E2=80=94G=C3=BCnther

