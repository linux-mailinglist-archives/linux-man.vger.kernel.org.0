Return-Path: <linux-man+bounces-1134-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E769045F2
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A0221F24B74
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4607B657;
	Tue, 11 Jun 2024 20:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="S5CtTh3H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39A51CD16
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 20:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718138882; cv=none; b=iykAc7YkxexB6m2zO7Pk24MLKzwnL84ifCLdgjc1aHjxoT23YoYl8GgTtKftPaAEf1QS07okPL7PQ66Z6kMYR46mOYpPpL3nWO7LOcGIrAofQUdQFkUm+v7rvSpfjBtquOLul9jyNFmtNFsZU8/l74GnA2q/jmCfqEaliiOZSSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718138882; c=relaxed/simple;
	bh=vDnywkylZ2t/QlmqEUwEDBbfC/HJeZxSsChj0409nRg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PVjTkh8gEuGgdCGAHT0gz/yqs5Up1lpTtF52wrS5bhFASR9V4mVvY8eL1Du34x0qpad5GOTz2Ztwr/TxZiflteQ10e74n1S9KRru753MZg+V4xKhNsLkXF3Rww2Kph1rGcKXqf13fKHpzeXuiUCttfqXuarOAoSrMz2QcZcrJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=S5CtTh3H; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7042ee09f04so3041550b3a.0
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 13:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1718138880; x=1718743680; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DIi4mnKhqUGkr3WTAvoFjuVia4jGvOZjBP8SO84tiBY=;
        b=S5CtTh3Ht0i4P1fPPj4XA0+h8oaJWYwEcjcNtGag/UJxz8tUEpRoprSwT11+xkoi4N
         80mYW5qKPxFYLOBkBXjSj9m2Myr1Crh1pyXvoKzRCqJGIhZTSn06rWT3L3nrP5voTG85
         wHOvA9Mjh+mi55cNDtDDPG3ewx2BWP9TyTMPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718138880; x=1718743680;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DIi4mnKhqUGkr3WTAvoFjuVia4jGvOZjBP8SO84tiBY=;
        b=exA2Y6FnX8ZifFTxd5fSKUeWUzCzFe+sfY+tmwFLzazti36pTA1h1F2/zqI/BFlClv
         Nn/7qKi8qd9xIMs+ngG3U4Pbi4wf9N6Vcba/yXoiNrJAYoxrV9TQeQ+o6UOqQTvMKlIq
         eJ/kMg1Fp1LIhnP137w4VL1VuFSF6pe1SFVAgxIssVVNHXkvzEC+7F7lWAG4LzmpM84P
         XG1rlFRg5L+6ZVxo1tDuImbZrFRl6ez5j7AE8QbkGybNqYtFggM/HHgqorNNONXDBdO5
         Ov8APtcR1tOYd2aena0ky30gOatEIczYonK4Vd2RxROTunIVu16OsDbLQMPjb6CJgH3v
         eF1w==
X-Gm-Message-State: AOJu0Yx6X1CfsAWbnzrPSb/Qai3ZCjrPXbTorlK+PPtG3eIw8bCqical
	G3CPU49JwLJC1oZ9n1mzFWZw4zFfZY4eQH9SQsHv9VyyXh1CfZyvN/Zs2wLpU8M=
X-Google-Smtp-Source: AGHT+IERqzI1i0XC7wgjU3lNpSomT5U2SgteOOLqa/whdTUYNf5l4n/ZLdUtWzEtt5bovY8rWJwBSA==
X-Received: by 2002:a05:6a20:158b:b0:1b8:54f8:3858 with SMTP id adf61e73a8af0-1b8a9ba7e23mr101317637.14.1718138880009;
        Tue, 11 Jun 2024 13:48:00 -0700 (PDT)
Received: from LQ3V64L9R2 (c-24-6-151-244.hsd1.ca.comcast.net. [24.6.151.244])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c4a75df0c6sm17319a91.5.2024.06.11.13.47.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 13:47:59 -0700 (PDT)
Date: Tue, 11 Jun 2024 13:47:57 -0700
From: Joe Damato <jdamato@fastly.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
Message-ID: <Zmi3_Svw4j9u4dhL@LQ3V64L9R2>
References: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>
 <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>
 <ZmizvqOQbYkKcwME@LQ3V64L9R2>
 <7fimwlnnzrkmrercgiiwmc5brbzrlgafbzlxij5dhg3rpctva5@hjh5ablva365>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fimwlnnzrkmrercgiiwmc5brbzrlgafbzlxij5dhg3rpctva5@hjh5ablva365>

On Tue, Jun 11, 2024 at 10:37:20PM +0200, Alejandro Colomar wrote:
> Hi Joe,
> 
> On Tue, Jun 11, 2024 at 01:29:50PM GMT, Joe Damato wrote:
> > > > diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
> > > > new file mode 100644
> > > > index 000000000..0fe03d6d4
> > > > --- /dev/null
> > > > +++ b/man/man2/ioctl_eventpoll.2
> > > > @@ -0,0 +1,173 @@
> > > > +.\" Copyright (c) 2024, Joe Damato
> > > 
> > > 1d
> > 
> > My apologies, but I am not sure what you mean by this. What does 1d
> > mean?
> 
> I meant `sed -i 1d`.  This line was redundant with line 2.

Ah, of course. I've removed that line above and left the line below
instead.

> > > > +.\" Copyright 2024, Joe Damato <jdamato@fastly.com>
> > > > +.\"
> > > > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > > > +.\"
> 
> [...]
> 
> > > Also, I'd like to align the member names according to
> > > <https://nginx.org/en/docs/dev/development_guide.html#code_style_variables>.
> > > That is, 2 spaces of minimum alignment, plus the necessary to make them
> > > all aligned (so 3 on the last).
> > > 
> > > I'd like also 2 spaces minimum before the comments, instead of just 1.
> > 
> > OK, based on the link you sent, I've aligned the start of each of
> > the types and then aligned the start of the field names. Lastly,
> > I've aligned the start of the comments for the first 3 fields, but
> > left the comment for the __pad just two spaces after the field name.
> > 
> > Did you want the comment for __pad to be aligned to the comments for
> > the in-use fields above?
> > 
> > This is what I have now, but I can insert space to move the pad comment over if
> > you like.
> > 
> > .EX
> > .B struct epoll_params {
> > .BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> > .BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> > .BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> > \&
> > .BR " " "/* pad the struct to a multiple of 64bits */"
> > .BR "  uint8_t  __pad;" "  /* Must be zero */"
> > .B };
> > .EE
> 
> LGTM.
> 
> [...]
> 
> > > Please also add a STANDARDS section, which just says "Linux."
> > 
> > OK added STANDARDS (in the order above) which just says Linux:
> > 
> > .SH STANDARDS
> > .P
> 
> .P after .SH is redundant.

Fixed.

Will push a v4 shortly after re-reading this one.
 
> > Linux.
> > .SH HISTORY
> > 
> > > Regarding semantic newlines, it looks great.  Thanks!
> > 
> > Great!
> 
> Have a lovely night!
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>



