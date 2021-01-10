Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38C162F08DE
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 18:48:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726346AbhAJRsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 12:48:42 -0500
Received: from vmicros1.altlinux.org ([194.107.17.57]:57270 "EHLO
        vmicros1.altlinux.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726263AbhAJRsm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 10 Jan 2021 12:48:42 -0500
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 024D872C8B0;
        Sun, 10 Jan 2021 20:48:00 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id E6DFE7CC89F; Sun, 10 Jan 2021 20:47:59 +0300 (MSK)
Date:   Sun, 10 Jan 2021 20:47:59 +0300
From:   "Dmitry V. Levin" <ldv@altlinux.org>
To:     Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
Message-ID: <20210110174759.GC25737@altlinux.org>
References: <20210102140254.16714-1-pali@kernel.org>
 <20210102183952.4155-1-pali@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210102183952.4155-1-pali@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jan 02, 2021 at 07:39:52PM +0100, Pali Rohár wrote:
> Also add description for struct in6_ifreq which is used for IPv6 addresses.
> 
> SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
> pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
> be used for deleting IPv4 address but only for IPv6 addresses.

Unlike SIOCGIFADDR and SIOCSIFADDR which are supported by many protocol
families, SIOCDIFADDR is supported by AF_INET6 and AF_APPLETALK only.


-- 
ldv
