Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04EC22E883C
	for <lists+linux-man@lfdr.de>; Sat,  2 Jan 2021 19:37:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726627AbhABSgs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Jan 2021 13:36:48 -0500
Received: from mail.kernel.org ([198.145.29.99]:40258 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726619AbhABSgr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 2 Jan 2021 13:36:47 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBB5A207CD;
        Sat,  2 Jan 2021 18:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1609612566;
        bh=xk4DMKfFUMe7Orizwa8RYwaBg1ATlMnlOiQje7VJwXg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Riw1fUGWHarDsK2Gy1OzxK8XEjX8c+djqfLGjkknATHJ6x1sxuBnTa2ESbU0RjpJ4
         Ul0OBlsRMuBjpw6UAiYOxJ+vQcrX5ajqQ6xLKOSuPSkwlsBUEPhSc0i6HkFYsAFoco
         vrod0FAxjJe5Qqxo69wv+YlW1m60DTogfhLKBknrshAYiJnXcP+N1bKp6IpkXw0QTK
         ARfNxMNzwBu6065P32sRR/CKDXiNsp/Bh9oZ1+T+nTdnK/ynFskAl8r30jmb7RmM0v
         nj3NEDtA/IfUBn+/QmfEJKZ0W+9fj3UXOCIRYSwkaO4fTwO3GcU7yxsIP6/QoVLPjR
         fGJSSvqrwHTTg==
Received: by pali.im (Postfix)
        id 5F6EFA38; Sat,  2 Jan 2021 19:36:04 +0100 (CET)
Date:   Sat, 2 Jan 2021 19:36:04 +0100
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
Message-ID: <20210102183604.ocbhegclbkugm45l@pali>
References: <20210102140254.16714-1-pali@kernel.org>
 <486b1176-d12b-4f6f-0890-f3d4e8483eb7@gmail.com>
 <20210102181054.pspqz7tj24wviu5i@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210102181054.pspqz7tj24wviu5i@pali>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday 02 January 2021 19:10:54 Pali Rohár wrote:
> Hello!
> 
> On Saturday 02 January 2021 19:04:06 Alejandro Colomar (man-pages) wrote:
> > I've seen there's ifr_ifindex too (see SIOCGIFNAME).
> > Can it be used in the same way as ifr6_ifindex?
> 
> Sorry, I do not know too. In all applications I saw that they are using
> ifr_name for IPv4 stuff.
> 
> This needs to be tested if ifr_ifindex instead of ifr_name works for
> specifying IPv4 address.

Now I can answer, no, it cannot be used. ifr_ifindex is part of union
structure where is also ifr_addr. So you can specify either ifr_ifindex
or ifr_addr, but not both fields at the same time.

Therefore network interface for IPv4 address can be specified only via
ifr_name.
