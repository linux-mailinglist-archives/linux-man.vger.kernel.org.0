Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0CC927579F
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 13:58:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726548AbgIWL6r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 07:58:47 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:47629 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726545AbgIWL6r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 07:58:47 -0400
X-Greylist: delayed 386 seconds by postgrey-1.27 at vger.kernel.org; Wed, 23 Sep 2020 07:58:47 EDT
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BxGkX1DRYz1qsjn;
        Wed, 23 Sep 2020 13:52:20 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BxGkX0tZMz1qvhW;
        Wed, 23 Sep 2020 13:52:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id UqGnSAyOQ81p; Wed, 23 Sep 2020 13:52:19 +0200 (CEST)
X-Auth-Info: abPpeKB4Rz3jihRVbnBRrwW5D0iaGdurJdsRdDd1JjSZpAYWrAwlvLh+DR/aVovh
Received: from igel.home (ppp-46-244-162-142.dynamic.mnet-online.de [46.244.162.142])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 23 Sep 2020 13:52:19 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
        id 812302C0A5D; Wed, 23 Sep 2020 13:52:18 +0200 (CEST)
From:   Andreas Schwab <schwab@linux-m68k.org>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     Florian Weimer via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
References: <874knosoyq.fsf@oldenburg2.str.redhat.com>
        <87r1qsvhqm.fsf@igel.home> <87zh5gr9yj.fsf@oldenburg2.str.redhat.com>
X-Yow:  HUGH BEAUMONT died in 1982!!
Date:   Wed, 23 Sep 2020 13:52:18 +0200
In-Reply-To: <87zh5gr9yj.fsf@oldenburg2.str.redhat.com> (Florian Weimer's
        message of "Wed, 23 Sep 2020 13:47:32 +0200")
Message-ID: <87mu1gvhfx.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sep 23 2020, Florian Weimer wrote:

> Do you agree that this is how the handshake should work?

I have never seen the audit interface being used, so I have no opinion.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
