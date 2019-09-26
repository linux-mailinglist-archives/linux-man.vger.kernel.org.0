Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD25FBF9DD
	for <lists+linux-man@lfdr.de>; Thu, 26 Sep 2019 21:10:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728600AbfIZTKf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Sep 2019 15:10:35 -0400
Received: from gateway31.websitewelcome.com ([192.185.144.219]:16330 "EHLO
        gateway31.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728069AbfIZTKf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Sep 2019 15:10:35 -0400
X-Greylist: delayed 1500 seconds by postgrey-1.27 at vger.kernel.org; Thu, 26 Sep 2019 15:10:35 EDT
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
        by gateway31.websitewelcome.com (Postfix) with ESMTP id ABD03190E18
        for <linux-man@vger.kernel.org>; Thu, 26 Sep 2019 13:24:00 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id DYQqi6acuVUVYDYQqiugK9; Thu, 26 Sep 2019 13:24:00 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:34080 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.92)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1iDYQp-000K7D-Ex; Thu, 26 Sep 2019 13:23:59 -0500
Date:   Thu, 26 Sep 2019 20:23:57 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Ian Hunter <ian@ianhunter.me>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Error in read.1p
Message-ID: <20190926182357.GA20390@comp.lan>
References: <CAB+My4xQ8w=8E71JzzhG+kwZ+x8OM1W1Jtoya_gDMwbcyVoBbA@mail.gmail.com>
 <20190926181754.GA15754@comp.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190926181754.GA15754@comp.lan>
User-Agent: Mutt/1.6.1 (2016-04-27)
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1iDYQp-000K7D-Ex
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:34080
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 4
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Sep 26, 2019 at 08:17:54PM +0200, Arkadiusz Drabczyk wrote:
> On Wed, Sep 25, 2019 at 09:41:30PM -0500, Ian Hunter wrote:
> > Hello,
> > 
> > The man page for read.1p incorrectly uses a unicode minus ("−")
> > instead of a hyphen ("-") in places where flags are being used or
> > described.
> 
> A quick ag '\(mi' done in man-pages-posix-2013-a.tar.xz shows that
> a lot of manpages in this tarball have this problem.

... but it can be solved by setting non-UTF LANG:

$ LANG=en_US  man ./read.1p
-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
