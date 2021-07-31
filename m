Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64CFF3DC5A7
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 13:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232450AbhGaLG6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 07:06:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:46424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232263AbhGaLG6 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 31 Jul 2021 07:06:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id C3EF960E76;
        Sat, 31 Jul 2021 11:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627729611;
        bh=LJDKrj8VeNbhFVnrh1S97fWb1kuLk4qVxvdGKpBVOZo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bvgb0E2WWAxO812DMiy6QL72e0zJtU6Jnk7kKA201i2Wi7XpCHAigWX5AIPqN2UYG
         P1FCPdfs0FObQHN8uSpF0E9B8/KE5oHWqxOQC8br1WeDFzpm2Ilu8puLa5svXiDDOe
         Hw2PPefWVpg5aQpjIMtj2vhNYyZolW6PP1tclUD7IXbb6eBQdgQAaKnshci92NVBXv
         x+aYlf72JvQuwcufyVq64OCBHieUet5wUprW1LWrrfKtbKbmQnjV7BAy+/8diOrGwJ
         8nZVX4tin+OHfl2ngPBEDSXvgDHihwba9BICso/IWFp+HEpxLXPNGm/n8RJGaEUPg9
         c87qn2iYZLzrg==
Received: by pali.im (Postfix)
        id 4D066941; Sat, 31 Jul 2021 13:06:49 +0200 (CEST)
Date:   Sat, 31 Jul 2021 13:06:49 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v2] termios.3: Add information how to set baud rate to
 any other value
Message-ID: <20210731110649.2irr2eb335jpwuo6@pali>
References: <20210730153044.23673-1-pali@kernel.org>
 <20210730184536.13620-1-pali@kernel.org>
 <20210731001943.pqpclzfhjgwztdo7@localhost.localdomain>
 <b0ac0201-e102-0556-04f9-9685abf1c5c9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b0ac0201-e102-0556-04f9-9685abf1c5c9@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday 31 July 2021 13:04:50 Alejandro Colomar (man-pages) wrote:
> Hi Branden,
> 
> On 7/31/21 2:19 AM, G. Branden Robinson wrote:
> > Hi, Pali!
> > 
> > At 2021-07-30T20:45:36+0200, Pali Rohár wrote:
> > > +Setting the baud rate to a value other that those defined by
> > > +.B Bnnn
> > > +constants is possible via the
> > 
> > I'd say
> > 
> > .BI B nnn
> > 
> > because the "nnn" is not literal, but variable.
> 
> Agree.
> 
> But as I already merged the patch, I'll add a new patch with that change.
> Moreover, man pages mostly-consistently use .B Bnn style (although
> incorrectly, from reading groff_man(7)), so it deserves a separate patch.

Makes sense. Would you fix style on all places ('git grep Bnn')?

> Thanks,
> 
> Ale
> 
> > 
> > Regards,
> > Branden
> > 
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
