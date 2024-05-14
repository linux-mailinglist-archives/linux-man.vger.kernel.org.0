Return-Path: <linux-man+bounces-918-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 693258C5C4B
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 22:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FC4F1C20AB4
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96750181BAD;
	Tue, 14 May 2024 20:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZSrLvN+m"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9BC181B9E
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 20:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715718391; cv=none; b=se7eL4jjcFZutc9iOar74jbOEJ/jgb4i2XsAhbwlYHa1TQk0rm40SuvS4Em1FDScbg07KGC5EBWAmFgL6Qy4XBgVYwBoc0RcgvxLz+nMquJpDth9c1RcDtGIq63b9xFIPjrhcP5aTLp41whv8b93XiMKo2KBAqVw4rilFg4JFRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715718391; c=relaxed/simple;
	bh=ViQ1ZxVIr0foJEVAvFR6BewPBjOTxd5Tl2Edc5pnbkM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tg3oBDW8jaGGP/X99UvB14Sxido8/bufxc58hWEI1TnjeqPeg3RXzft41JKyRkUw+BYwQebwsjg+5BnBbKE3DdCZXjzpp+n6ZqVQqpQWKAh3k1pOGXfDYPoRj1CncnaFBR2x2WJfLYsLydMt/xdkg1lbvYwwYTx/E8M56LM5Nfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZSrLvN+m; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-572c65cea55so2377414a12.0
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715718388; x=1716323188; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bRDZZjbyhoG/MmDEe1MgNZVW9VZM8a7B2PDnk+aCsBQ=;
        b=ZSrLvN+mggMbCbfvRbD4f3+BY017etEXXkvKDgrb3lbyxBWEs46YgVgC3qfzW5rXyH
         VxTN296+l570rAqlmDJQ6KVuJszC9c6mkfVatrFZtgBG+ZNV21ZVL2IKMuikCsfMki0J
         jgCAAhC+1uUe3C6p+5X4D1AOdpIFzOdhGi8EHa0Rphex1GyNkEGxCpnqP7XEhqi0gNJT
         ecCaZceacvyBs69FvSmyLHpb3yVW+vaplAeGNt2K0Fwy00BQ4qC4UQXnjBTc20qAvRty
         LTsTIDOOQyRQNlN5WxhUaZsQmnln8cMDw+DSvZlIsKLTJ5TqAGRLt2YlXkoXI04A8Hf+
         p36w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715718388; x=1716323188;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bRDZZjbyhoG/MmDEe1MgNZVW9VZM8a7B2PDnk+aCsBQ=;
        b=xJHbypgmM23d6x0kduLblcmzRyF++kRUwpL47qwC6ahsqnWjtv9iif3YttfZm6FvdO
         p6OYNpNMK2ipMK2GwBBrJU14a5ZWuHj+hkmS85JeDcRr1KokNGUFdFxWuWyRquQ20EQ5
         pMeWtlJEmBsYZUVs2m7LsbSFaDj5LvtlIPvl7fxCpU38zEY8hpzwYjtjZxfCUli5wN+J
         k8NLPEJdoxi8sU8XRWGrC1edqcue8fQxaYbSwUlMUeHi928IyOWWrgG3t87A+CsXetlp
         KY7cU7cxuoPoynxlx3usBOaqfljJVoL72hpfjAO8mb5GHIc3riz/5WLsjtFAZ03S8a7x
         Ft/w==
X-Forwarded-Encrypted: i=1; AJvYcCVCLhA/yY7EJhdOkAwDIMMsrEgZ2MBCUu3NFFKI94mqZOUTUpF8NBytATTAUgkspud9lTIzd9PaIhXIkLeLU+4gL2oncUj0fjW0
X-Gm-Message-State: AOJu0Ywyg/qv4/3V9av2ftZrHgfKWDfpmK7j5LFdoeXROLkO9udPVR0d
	jH+b5L6zRCqUx8or8FSHnNCklVsFU9fm6SUoTaQt0+4BnfCwHjuu/5ynmJIDFZ+ceMwT76xJ85E
	XhNZ8c9JCGb9aTyncZUSRSSA7n1I=
X-Google-Smtp-Source: AGHT+IF/fYv1yzX7UtrmSTciSZkL8nBsRD5aeXbmyCuQOtB5JDTWP/gmh7D1tOn2WUdQ76xHpvb9Um7xIcCIncZYx4I=
X-Received: by 2002:a05:6402:3590:b0:574:f38a:289 with SMTP id
 4fb4d7f45d1cf-574f38a04e6mr474603a12.20.1715718388095; Tue, 14 May 2024
 13:26:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240514192110.84881-1-technoboy85@gmail.com> <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>
 <20240514201538.7by4jdrrlhac3kmf@illithid>
In-Reply-To: <20240514201538.7by4jdrrlhac3kmf@illithid>
From: Matteo Croce <technoboy85@gmail.com>
Date: Tue, 14 May 2024 22:25:50 +0200
Message-ID: <CAFnufp1U8Tp2hpgAPi-aEhXdVVoUqeZdqbHd1RbYiu_OqQRLEA@mail.gmail.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Matteo Croce <teknoraver@meta.com>
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 14 mag 2024 alle ore 22:15 G. Branden Robinson
<g.branden.robinson@gmail.com> ha scritto:
>
> Hi Alex,
>
> At 2024-05-14T21:54:42+0200, Alejandro Colomar wrote:
> > > +.BR subset "=\fBpid\fP (since Linux 5.8)"
> >
> > This can be simplified as:
> >
> > .BR subset = pid " (since Linux 5.8)"
>
> It appears to me that all of the equals signs in mount options in this
> page should be bold.  They are literal, after all...
>
> So this would simplify further to:
>
> .BR subset=pid " (since Linux 5.8)"
>
> ...which might look almost non-mystical to man(7) novices.
>
> Regards,
> Branden

Could be, but that could be done all in once in a further refactor, I
don't want to change the document style within this change.

Regards,
-- 
Matteo Croce

perl -e 'for($t=0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

