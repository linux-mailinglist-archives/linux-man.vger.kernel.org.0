Return-Path: <linux-man+bounces-1342-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0306F928E44
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 22:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A092E1F25439
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 20:30:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C137916F851;
	Fri,  5 Jul 2024 20:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KxxoHswH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA1E135417
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 20:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720211341; cv=none; b=pGIlbF8C1vJMWgv8oiQsnN5OO3OWIIUs21ziUVhK2vbdpLdAjDz7kM90zFmogBCIaVihkiG9wfd0MOpydt8Q5XuhYyynP0wM6/mCKjMJDOq6ySNgMiDXPPCpCKKO8Pf75yJi9yg6RVN/CCw2ruMxd3umUEvVINiPZqTB+3HgbAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720211341; c=relaxed/simple;
	bh=eKQ6HLnKRw4iMtRFSma+eAon+BlRxOela5/e16fkB4o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f6CshiSPDUC8cvXCKoiPLiMMvk8mAdxvTEiviKg3lPp7zkR4GlYjYmwOQjzZh8Am4qnuaNe4D4sF6NZ09O4Rg1Dw/sejtnRnDsHem33TfR1a3yFTTWsMJGulIWsYLmaWkwW6lxw+8DqgfOeFRLHiHXMBUW1qGmJ9pcGEBFUVeKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KxxoHswH; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-36798779d75so1647602f8f.3
        for <linux-man@vger.kernel.org>; Fri, 05 Jul 2024 13:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720211338; x=1720816138; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Qo+3fuYQPo3zTcpvvQ7mOl8JBOYq3yzSe6TiAs16MoU=;
        b=KxxoHswHlw/I3BS0UkpOAWR6sCUrXLdgG8lRmPvIe4S9eyVxShDSlneXxvAUS+kNNb
         w9xEtow7w0a8yYFomtIxHnyp0ENu+qYDKq3s8tyQ2C2udGXs6/qwusSGcdDwiVjj++Ni
         Xy4sgnFnPRWJxSek9pkDe4626e5D0wUfvDvXZX/wLl9JBWx+Y5nkpWD4IYOOht/3ZYtk
         Ch7D05Ry3J9IGCvBkr12Cg8UgfMiYXkxFZeHaCxiAxVs8swFMmxM5OdQk6H2loZj+LOB
         iLkXbxkUW0TXWqAleROV/MoKhzodqyMg94O57sVpHpDbEs8DDUM7+mB8Zq2tkxLEzPl+
         5udQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720211338; x=1720816138;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qo+3fuYQPo3zTcpvvQ7mOl8JBOYq3yzSe6TiAs16MoU=;
        b=gvell1jyip4OKIMQP0NYcHa8fswNGxcWTnw7C8FhPbXerTGJQznOilZZrJ2eL0PrAZ
         Wn0CBIm3WVpaBZV7pSfCsxB3HytqbNlHRLhacZcT8w1vOwkBnAHCsrmrGR6V0cRsuwH6
         oQ6EvHwHoLE0w3nis/xN6lDwHJUP3acnblcV7DU1elkh6WtZvmyuoRpzeG4BVcNKWRQ5
         8A0W4pOWAijmL1lTbu3v+D7Z5VeZDK6mBklTV/TUo2jhYShaaeuCc+0I+iQImRGNTJCx
         lHoWIVDhRIR3QiW1EEv+3Qy2JZMEyiF2eDK6v9HgARwAiH8r4xBs4ofiu1V+Y+IxPoy2
         asKg==
X-Forwarded-Encrypted: i=1; AJvYcCX+lMOJUvJlwG3Jf4gkMaOhXqPsNBxCIDIWXFGfSIfzi0HZD/rZ5yBX+8MyHlGDmCowR8uFGwEMvRIhiUcrK21T6eByhx0J7dRd
X-Gm-Message-State: AOJu0YwMLXDRFdLo1DD/oll/sKGCrdlGhzNrrtutssLRfdP/IuHqA77K
	uKHzOnpQ1XePAoxoXeMubtWkch+BKbcujpYz7iVwtGMUpVs+A9EsIg3OZ24JkUamJ+FZAosss84
	ZF17xRLsInUleyOw/a8S5L7p3mRI=
X-Google-Smtp-Source: AGHT+IFY/1Oir66EBcEwQQwrRv0Vi+vTpWMaWlVKnemAi3Dvdw07A67GXEv2dVIsWCvVk5cRyTD7da98FYVdN4x2vdo=
X-Received: by 2002:a5d:51cd:0:b0:367:91d9:8822 with SMTP id
 ffacd0b85a97d-3679dd7269cmr5183470f8f.70.1720211338111; Fri, 05 Jul 2024
 13:28:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240705130249.14116-2-alx@kernel.org> <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de> <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de> <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
 <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
 <52b2cc96653f7587ed6e9d11a25ba8b052e9d394.camel@gwdg.de> <63bosaubufw75lzubtwykebbottnim5ceraaypstjmojimtjn6@5krmbaevue7w>
 <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
In-Reply-To: <c764bd923ac6ebc754ef70c537cdc800c7214b7e.camel@gwdg.de>
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Date: Fri, 5 Jul 2024 21:28:46 +0100
Message-ID: <CAH6eHdSXtYgYyKni3PuwTWTZySw4i=xtz+Fq_RawM5F2WyybCA@mail.gmail.com>
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like functions
To: Martin Uecker <muecker@gwdg.de>
Cc: Alejandro Colomar <alx@kernel.org>, Xi Ruoyao <xry111@xry111.site>, Jakub Jelinek <jakub@redhat.com>, 
	libc-alpha@sourceware.org, gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, 
	linux-man@vger.kernel.org, LIU Hao <lh_mouse@126.com>, 
	Richard Earnshaw <Richard.Earnshaw@arm.com>, Sam James <sam@gentoo.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Jul 2024 at 21:26, Martin Uecker <muecker@gwdg.de> wrote:
>
> Am Freitag, dem 05.07.2024 um 21:28 +0200 schrieb Alejandro Colomar:
>
> ...
> >
> > > > Showing that you can contrive a case where a const char* restrict and
> > > > char** restrict can alias doesn't mean there's a problem with strtol.
> > >
> > > I think his point is that a const char* restrict and something which
> > > is stored in a char* whose address is then passed can alias and there
> > > a warning would make sense in other situations.
> >
> > Indeed.
> >
> > > But I am also not convinced removing restrict would be an improvement.
> > > It would make more sense to have an annotation that indicates that
> > > endptr is only used as output.
> >
> > What is the benefit of keeping restrict there?  It doesn't provide any
> > benefits, AFAICS.
>
> Not really I think.  I am generally not a fan of restrict.
> IMHO it is misdesigned and I would like to see it replaced
> with something better.  But I also not convinced it really
> helps to remove it here.
>
> If we marked endptr as "write_only" (which it might already
> be) then a future warning mechanism for -Wrestrict could
> ignore the content of *endptr.


That seems more useful. Add semantic information instead of taking it
away. If the concern is a hypothetical future compiler warning that
would give false positives for perfectly valid uses of strtol, then
the problem is the compiler warning, not strtol. If additional
information can be added to avoid the false positives (and also
possibly optimize the code better), then that wouldn't require a
change to the standard motivated by a hypothetical compiler warning.

