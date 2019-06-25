Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69A18559AB
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2019 23:07:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726368AbfFYVHX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 25 Jun 2019 17:07:23 -0400
Received: from ms.lwn.net ([45.79.88.28]:34554 "EHLO ms.lwn.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725782AbfFYVHX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 25 Jun 2019 17:07:23 -0400
Received: from lwn.net (localhost [127.0.0.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ms.lwn.net (Postfix) with ESMTPSA id B50A82AE;
        Tue, 25 Jun 2019 21:07:22 +0000 (UTC)
Date:   Tue, 25 Jun 2019 15:07:21 -0600
From:   Jonathan Corbet <corbet@lwn.net>
To:     Ricardo Biehl Pasquali <pasqualirb@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] socket.7: Add description of SO_SELECT_ERR_QUEUE
Message-ID: <20190625150721.0c79a7c0@lwn.net>
In-Reply-To: <20190624014047.GA14572@localhost.localdomain>
References: <20190624014047.GA14572@localhost.localdomain>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 23 Jun 2019 22:40:47 -0300
Ricardo Biehl Pasquali <pasqualirb@gmail.com> wrote:

> Signed-off-by: Ricardo Biehl Pasquali <pasqualirb@gmail.com>
> ---
>  man7/socket.7 | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> Jonathan, can you help to reach Michael or review yourself?
> Sorry for bothering you.
> 
> It's the fourth time I'm sending this.
> First time was on 2019-02-28.

It looks OK to me, but I don't have any sort of backdoor access to Michael
that you don't.  Unfortunately, there's not much to be done until he has
the time to look at your patch.

Sorry,

jon
