Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADCE6BF958
	for <lists+linux-man@lfdr.de>; Thu, 26 Sep 2019 20:41:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728333AbfIZSll (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Sep 2019 14:41:41 -0400
Received: from gateway24.websitewelcome.com ([192.185.51.122]:27141 "EHLO
        gateway24.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728241AbfIZSlk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Sep 2019 14:41:40 -0400
X-Greylist: delayed 1397 seconds by postgrey-1.27 at vger.kernel.org; Thu, 26 Sep 2019 14:41:40 EDT
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
        by gateway24.websitewelcome.com (Postfix) with ESMTP id 69A0D654D7
        for <linux-man@vger.kernel.org>; Thu, 26 Sep 2019 13:17:57 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id DYKziiKruPUvSDYKziNQus; Thu, 26 Sep 2019 13:17:57 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:44066 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.92)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1iDYKy-000HL2-Cv; Thu, 26 Sep 2019 13:17:56 -0500
Date:   Thu, 26 Sep 2019 20:17:54 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Ian Hunter <ian@ianhunter.me>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Error in read.1p
Message-ID: <20190926181754.GA15754@comp.lan>
References: <CAB+My4xQ8w=8E71JzzhG+kwZ+x8OM1W1Jtoya_gDMwbcyVoBbA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAB+My4xQ8w=8E71JzzhG+kwZ+x8OM1W1Jtoya_gDMwbcyVoBbA@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1iDYKy-000HL2-Cv
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:44066
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 25, 2019 at 09:41:30PM -0500, Ian Hunter wrote:
> Hello,
> 
> The man page for read.1p incorrectly uses a unicode minus ("−")
> instead of a hyphen ("-") in places where flags are being used or
> described.

A quick ag '\(mi' done in man-pages-posix-2013-a.tar.xz shows that
a lot of manpages in this tarball have this problem.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
