Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA23E2E8831
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 19:11:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726642AbhABSLh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 13:11:37 -0500
Received: from mail.kernel.org ([198.145.29.99]:39304 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726628AbhABSLh (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 2 Jan 2021 13:11:37 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8701220786;
        Sat,  2 Jan 2021 18:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609611056;
        bh=qvN/3alVt+qh0apsDOqS1XdL1+ZmcIx7b+E3QU6FtA8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=E7BKGgsF5SHmE0HO3v/1Y4q9U/XVskmICutJ90Cf+9X3NtcOXo8U6KH8h/hZyVr5Y
         nNo2SR22rHjQ1PtZn2TaJ34ro9FhPSo9qEm3qyzaZbBmUxz8QjQJO9G1u11rawJRvP
         6Djof4bIpVTuZBbXvqYXHdB71ig3y8KWnVBn8onRw/Jc/FnKhY5vnMYBKkl8lcC/Dh
         8PGuJWbGBL7l8P/A2vE9InYB+M4gP6l6UyPpPFEfPFj6jcJu+oSWOdMhuq/RCnFK2C
         qViy3sLh7I6zvbwd73EIzXoJBs3+D3Xmz+nHIKTjjpdjSt7J9A5KQeeT38wXb6kQ0m
         cLgbruyKjQkNQ==
Received: by pali.im (Postfix)
        id 44C7BA38; Sat,  2 Jan 2021 19:10:54 +0100 (CET)
Date:   Sat, 2 Jan 2021 19:10:54 +0100
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
Message-ID: <20210102181054.pspqz7tj24wviu5i@pali>
References: <20210102140254.16714-1-pali@kernel.org>
 <486b1176-d12b-4f6f-0890-f3d4e8483eb7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <486b1176-d12b-4f6f-0890-f3d4e8483eb7@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello!

On Saturday 02 January 2021 19:04:06 Alejandro Colomar (man-pages) wrote:
> Hi Pali,
> 
> Please, see some comments below.
> 
> On 1/2/21 3:02 PM, Pali Rohár wrote:
> > Also add description for struct in6_ifreq which is used for IPv6 addresses.
> > 
> > SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
> > pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
> > be used for deleting IPv4 address but only for IPv6 addresses.
> > 
> > Signed-off-by: Pali Rohár <pali@kernel.org>
> > ---
> >  man7/netdevice.7 | 36 +++++++++++++++++++++++++++++-------
> >  1 file changed, 29 insertions(+), 7 deletions(-)
> > 
> > diff --git a/man7/netdevice.7 b/man7/netdevice.7
> > index 488e83d9a..5b68e4988 100644
> > --- a/man7/netdevice.7
> > +++ b/man7/netdevice.7
> > @@ -55,9 +55,27 @@ struct ifreq {
> >  .EE
> >  .in
> >  .PP
> > +Exception is
> > +.B AF_INET6
> > +socket for which is used
> > +.I in6_ifreq
> > +structure:
> 
> Wording fix:
> 
> [
> AF_INET6 is an exception.
> It passes an
> .I in6_ifreq
> structure:
> ]

Ok, I will fix it.

> Are there more exceptions?
> Or is it the only one?

I really do not know. I played only with the IPv4 and IPv6 sockets.

I come across this incompatibility during reading pppd source code that
it has different structures for IPv4 and IPv6 which are passed to
SIOCSIFADDR ioctl.

> > +.PP
> > +.in +4n
> > +.EX
> > +struct in6_ifreq {
> > +    struct in6_addr     ifr6_addr;
> > +    u32                 ifr6_prefixlen;
> > +    int                 ifr6_ifindex; /* Interface index */
> > +};
> > +.EE
> > +.in
> > +.PP
> >  Normally, the user specifies which device to affect by setting
> >  .I ifr_name
> > -to the name of the interface.
> > +to the name of the interface or
> > +.I ifr6_ifindex
> > +to the index of the interface.
> 
> I've seen there's ifr_ifindex too (see SIOCGIFNAME).
> Can it be used in the same way as ifr6_ifindex?

Sorry, I do not know too. In all applications I saw that they are using
ifr_name for IPv4 stuff.

This needs to be tested if ifr_ifindex instead of ifr_name works for
specifying IPv4 address.

> >  All other members of the structure may
> >  share memory.
> >  .SS Ioctls
> > @@ -142,13 +160,17 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
> >  .PP
> >  Setting the extended (private) interface flags is a privileged operation.
> >  .TP
> > -.BR SIOCGIFADDR ", " SIOCSIFADDR
> > -Get or set the address of the device using
> > -.IR ifr_addr .
> > -Setting the interface address is a privileged operation.
> > -For compatibility, only
> > +.BR SIOCGIFADDR ", " SIOCSIFADDR ", " SIOCDIFADDR
> > +Get, set or delete the address of the device using
> > +.IR ifr_addr " or " ifr6_addr " with " ifr6_prefixlen .
> 
> Generally, we place each name on a single line.
> The line after .TP is an exception, as you can see above.
> So this would be:
> 
> [
> .IR ifr_addr ,
> or
> .I ifr6_addr
> with
> .IR ifr6_prefixlen .
> ]

Ok, I will change it.

> > +Setting or deleting the interface address is a privileged operation.
> > +For compatibility,
> > +.BR SIOCGIFADDR " returns only " AF_INET " addresses, "
> > +.BR SIOCSIFADDR " accepts " AF_INET " and " AF_INET6 " addresses and "
> > +.BR SIOCDIFADDR " deletes only " AF_INET6 " addresses. "
> 
> See above.
> 
> >  .B AF_INET
> > -addresses are accepted or returned.
> > +address can be deleted by setting zero address via
> > +.BR SIOCSIFADDR .
> >  .TP
> >  .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
> >  Get or set the destination address of a point-to-point device using
> > 
> 
> Thanks,
> 
> Alex
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/
