Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3B41275760
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 13:45:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726610AbgIWLp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 07:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726445AbgIWLp6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 07:45:58 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E8FDC0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 04:45:57 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BxGb70qc7z1rsMZ;
        Wed, 23 Sep 2020 13:45:55 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BxGb70S3Vz1qvhS;
        Wed, 23 Sep 2020 13:45:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 5vCAw7wXkp6U; Wed, 23 Sep 2020 13:45:54 +0200 (CEST)
X-Auth-Info: ig7rHVklBf+w9Yu9fYLaeYsuX/aJy5s/hDo37awXWWZYKclbtm37mqVlta0BKwPS
Received: from igel.home (ppp-46-244-162-142.dynamic.mnet-online.de [46.244.162.142])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Wed, 23 Sep 2020 13:45:54 +0200 (CEST)
Received: by igel.home (Postfix, from userid 1000)
        id E74D42C0A5D; Wed, 23 Sep 2020 13:45:53 +0200 (CEST)
From:   Andreas Schwab <schwab@linux-m68k.org>
To:     Florian Weimer via Libc-alpha <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
References: <874knosoyq.fsf@oldenburg2.str.redhat.com>
X-Yow:  I can't think about that.  It doesn't go with HEDGES in the shape of
 LITTLE LULU -- or ROBOTS making BRICKS...
Date:   Wed, 23 Sep 2020 13:45:53 +0200
In-Reply-To: <874knosoyq.fsf@oldenburg2.str.redhat.com> (Florian Weimer via
        Libc-alpha's message of "Wed, 23 Sep 2020 13:38:05 +0200")
Message-ID: <87r1qsvhqm.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sep 23 2020, Florian Weimer via Libc-alpha wrote:

> +.PP
> +In order to enable backwards compatibility with older dynamic linkers,
> +an audit module can examine the
> +.I version
> +argument and return an earlier version than
> +.BR LAV_CURRENT ,
> +assuming the module can adjust its implement to match the requirements

s/implement/interface/ ?

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
