Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 714853DB039
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234989AbhG3AVj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:21:39 -0400
Received: from mail.kernel.org ([198.145.29.99]:50600 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234931AbhG3AVi (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jul 2021 20:21:38 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1610D60C3F;
        Fri, 30 Jul 2021 00:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627604495;
        bh=7o2wY/HKpMO3FRFVaMV4393KSdF/tlZSfHc/16EKVvA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TFkwQywvr+7l57aShkrSLYS/K61pftBNumWODUj5J5ZPJTTC+CaJ3j7X4Jq9QlkI2
         O0BsX96bJ614pKIf86jivimAI8YTkPnf9NqTn9XPtfebls9yDwduxLXbLtrrXP5G/i
         7l84LLKbjUEZGuVmkeQgBQXhHuPoXGSqIkDPeVRIrusGFatx2IxRzf731UyA7rUtXn
         KsRhKh5+SrzeE44oIfDjAfsfCQ4qJF+LIZsIhtExSeHC2XSlJlfHDh6uFEOtOMtmYz
         Y2dckM6hi0+X6YUgg4hIpYCNny1i2dFzFuZISyGLl1jO8+gm615CUhKG9/pN3ecXxl
         8dF513Z7ApDFg==
Received: by pali.im (Postfix)
        id 624EB888; Fri, 30 Jul 2021 02:21:33 +0200 (CEST)
Date:   Fri, 30 Jul 2021 02:21:33 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] termios.3: Use bold style for Bnn and EXTn macro
 constants
Message-ID: <20210730002133.ix3rfgr7bpvtltag@pali>
References: <20210725225453.7341-1-pali@kernel.org>
 <430eaca8-3ea9-5df9-8db5-5d94bcb06815@gmail.com>
 <20210729172320.xhrbonoxisqioe3e@pali>
 <20210729230421.lm65cjomqx6rezzl@localhost.localdomain>
 <304b7610-a399-3275-755e-5648bfb941f2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <304b7610-a399-3275-755e-5648bfb941f2@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday 30 July 2021 01:41:49 Alejandro Colomar (man-pages) wrote:
> Hi Branden,
> 
> On 7/30/21 1:04 AM, G. Branden Robinson wrote:
> > At 2021-07-29T19:23:20+0200, Pali Rohár wrote:
> > > How do you prefer to format this part? \fBB0\fP, ..., \fBB9600\fP
> > 
> > I'd use the B or BR macro to set the literals, depending on whether they
> > are directly followed by something that should be in the roman style,
> > and I would definitely set the ellipsis in roman; when used as such,
> > it should never be set in bold or italics.  Use of the ellipsis in *roff
> > input requires some care, which is unfortunately often neglected.
> > 
> > .BR B0 ,
> > \&.\|.\|.\|,
> > .B 9600
> > 
> > (I dithered over inclusion of the thin space escape sequence \| between
> > the ellipsis and the comma.  I can see arguments either way, and a quick
> > Internet search does not suggest to me a strong wind in either
> > direction.  Since its presence or absence makes no difference for
> > terminal output, I expect most writers of man pages won't care.)
> 
> 
> Thanks again for your input!
> Good to know that.

Perfect! I will change it in this way.

> 
> Cheers,
> 
> Alex
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
