Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23FAF2F37AF
	for <lists+linux-man@lfdr.de>; Tue, 12 Jan 2021 18:53:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391894AbhALRwm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Jan 2021 12:52:42 -0500
Received: from mail.kernel.org ([198.145.29.99]:52488 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2390417AbhALRwm (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 12 Jan 2021 12:52:42 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 481D6222F9;
        Tue, 12 Jan 2021 17:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610473921;
        bh=oB7M1DXqRSLOTeTsZqoLtmiBX3Ik5d0gPYIyTc4CyWg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=E8RSTWbWEQFpnZfL1yhUC5c2cJn/2TmcaZYtUt2Do5ABlAAUXaJvst/FnGlUpmq42
         CyghzUnX7leL2+YtchR8k8W31UorX6DmermHGtEX4fYzGPCfcksE5E0pEbp2oWF72G
         CyNZfuvfVphVCjpF8bofNS4BE9EaNm8hsVzP9+SZX/wGC1Hrbucz7+QrC0Ea3ttNMQ
         Jq+6ssyTJcLrbzXs3GocWpOFS5P644jilfh5FmhKdFVnZSCf9Gdb16/ym2NTqpxymf
         VwCr6uFzXcWUmUfaai80FU2vZY+MqclnW2mTKT9wxkYJlpJCNms05JMY1sO8o3sDL4
         hw8K+68IyvqSw==
Received: by pali.im (Postfix)
        id EA579856; Tue, 12 Jan 2021 18:51:58 +0100 (CET)
Date:   Tue, 12 Jan 2021 18:51:57 +0100
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
Message-ID: <20210112175139.2qbozexc7bpklocd@pali>
References: <20210102140254.16714-1-pali@kernel.org>
 <20210102183952.4155-1-pali@kernel.org>
 <20210110174759.GC25737@altlinux.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210110174759.GC25737@altlinux.org>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sunday 10 January 2021 20:47:59 Dmitry V. Levin wrote:
> On Sat, Jan 02, 2021 at 07:39:52PM +0100, Pali Rohár wrote:
> > Also add description for struct in6_ifreq which is used for IPv6 addresses.
> > 
> > SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
> > pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
> > be used for deleting IPv4 address but only for IPv6 addresses.
> 
> Unlike SIOCGIFADDR and SIOCSIFADDR which are supported by many protocol
> families, SIOCDIFADDR is supported by AF_INET6 and AF_APPLETALK only.

Hello Dmitry! I do not have a problem to change commit message to your
suggestion. Just I not know nothing about AF_APPLETALK.
