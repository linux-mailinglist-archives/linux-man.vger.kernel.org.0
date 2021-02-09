Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CCE131576E
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 21:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233857AbhBIUFJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 15:05:09 -0500
Received: from mail.kernel.org ([198.145.29.99]:56512 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233267AbhBITq6 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 9 Feb 2021 14:46:58 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3937764E8C;
        Tue,  9 Feb 2021 19:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1612899474;
        bh=y3fAx+t472JBMRytKTIUtBkEvWeSey2AC6xEVvs204c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KLQvhqqSj4RJ0dU17vyIh0ETIQpHkhwPA3zRZ7SzqNKYywuUnzTPPr3pVJhWhFROb
         Y9t9/JpEPNim77nsdT65KhIrJogYSjM3Km9NRk7BnDPTbZPq9feCUN2BEdaxh+uhV3
         Fo1Fie/7h/7f7qQwML/KESBdbU3KVwEAiXYIDJhxR5rGCSkQsJchLTe4ARgFLQZt1L
         oddI2GU9xqhKwHbM+trOXYMTssp7C4u/+XW6t/+Sru7by7VBolPXAHE5rjuntkeTkU
         1P7GSF+xR4gSTOzGQWieVQfhNy7dCYgFNhC8uTWKfPS9NzkAlyyrObY/WbJNdJ5O5z
         PSIj2sxSc+hJQ==
Received: by pali.im (Postfix)
        id C28FDF9A; Tue,  9 Feb 2021 20:37:51 +0100 (CET)
Date:   Tue, 9 Feb 2021 20:37:51 +0100
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
Message-ID: <20210209193751.kgcrd43yymzowotv@pali>
References: <20210128152430.314458-1-alx.manpages@gmail.com>
 <20210128152430.314458-2-alx.manpages@gmail.com>
 <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
 <8ba042b9-c292-c76f-d553-cfb06bd74884@gmail.com>
 <2483bb46-5d32-1f2c-fceb-70d30f81b810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2483bb46-5d32-1f2c-fceb-70d30f81b810@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tuesday 09 February 2021 20:29:45 Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 2/7/21 12:18 PM, Alejandro Colomar (man-pages) wrote:
> > Hi Michael,
> > 
> > On 1/28/21 9:16 PM, Michael Kerrisk (man-pages) wrote:
> 
> [...]
> 
> >>>  .BR rtnetlink (7).
> >>>  Adding a new or deleting an existing IPv6 address can be done via
> >>> -.BR SIOCSIFADDR " / " SIOCDIFADDR
> >>> +.BR SIOCSIFADDR / SIOCDIFADDR
> > 
> > I noticed you didn't apply this part.  Did you forget it, or do you
> > prefer it as is?
> > 
> > Rationale:
> > 
> > https://lore.kernel.org/linux-man/fc4a94d4-2eac-1b24-cc90-162045eae107@gmail.com/
> 
> I'm not sure, but overall I did not/do like the sentence structure.
> I applied the patch below.
> 
> Cheers,
> 
> Michael
> 
> --- a/man7/netdevice.7
> +++ b/man7/netdevice.7
> @@ -394,8 +394,11 @@ IPv6 addresses can be read from
>  .I /proc/net/if_inet6
>  or via
>  .BR rtnetlink (7).
> -Adding a new or deleting an existing IPv6 address can be done via
> -.BR SIOCSIFADDR " / " SIOCDIFADDR
> +Adding a new IPv6 address and deleting an existing IPv6 address
> +can be done via
> +.B SIOCSIFADDRi

Hello Michael! There is an extra 'i'.

> +and
> +.B SIOCDIFADDR
>  or via
>  .BR rtnetlink (7).
>  Retrieving or changing destination IPv6 addresses of a point-to-point
