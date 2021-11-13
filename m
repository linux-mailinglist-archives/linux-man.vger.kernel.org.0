Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BB4944F329
	for <lists+linux-man@lfdr.de>; Sat, 13 Nov 2021 14:00:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235742AbhKMNDJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Nov 2021 08:03:09 -0500
Received: from mx1.riseup.net ([198.252.153.129]:50162 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231555AbhKMNDJ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 13 Nov 2021 08:03:09 -0500
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
         client-signature RSA-PSS (2048 bits) client-digest SHA256)
        (Client CN "mail.riseup.net", Issuer "R3" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4HrwXw63hXzF43h;
        Sat, 13 Nov 2021 05:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1636808416; bh=DDpVinDyAs44ZcjcG6SKcVltubCLhQbqJsvrNp3kfTQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZsoydFEwhAIP4q13ukABWN3fJcepZVyi3hdGp70uc1lhYShoR9kIcmM51yD2BYa+d
         llSnlZbVI8fCe5kYuVUPz/bMkr+qtkfUsit1XM1/mD073lyKJ3t8sYYVe4FV8J6FJ1
         RKr6cB1+BnVlGIADzscOZcP3sv9UIrFa6s7aCKZ4=
X-Riseup-User-ID: 85A17303C4C963F6D93623BD7658E191C2CB03F9F7C9583ED72E595416F753D3
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by fews2.riseup.net (Postfix) with ESMTPSA id 4HrwXt3kX8z1xmv;
        Sat, 13 Nov 2021 05:00:14 -0800 (PST)
Date:   Sat, 13 Nov 2021 13:00:24 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Subject: Re: [patch] pthread_cancel.3, pthread_cleanup_push_defer_np.3,
 pthread_setcancelstate.3, pthread_testcancel.3, pthreads.7: tfix
Message-ID: <20211113130024.zka6elp7mmshsrlv@localhost>
References: <20211113115656.5oomvy443gapjtx4@localhost>
 <20211113124015.tr5wdkrxzinn4qjf@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211113124015.tr5wdkrxzinn4qjf@localhost.localdomain>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Nov 13, 2021 at 11:40:17PM +1100, G. Branden Robinson wrote:
> > Changed cancelability to cancellability.
> This is a localization issue.  Words like 'travel' and 'cancel' usually
> decline to forms with a doubled 'l' in Commonwealth English but retain
> an unmodified stem in U.S. English.

You are right. But e.g. pthread_cancel already contains cancellation.
So I think that cancellability would be matching the already existing
style. Or cancellation is also changed to cancelation.

Sincerely,
Samanta
