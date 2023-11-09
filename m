Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 693047E710B
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 19:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbjKISDK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 13:03:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231478AbjKISDJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 13:03:09 -0500
X-Greylist: delayed 518 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 09 Nov 2023 10:03:05 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1693A92
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 10:03:05 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4SR8jB6ttWz1sBpn;
        Thu,  9 Nov 2023 18:54:22 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
        by mail.m-online.net (Postfix) with ESMTP id 4SR8j958P3z1qqlS;
        Thu,  9 Nov 2023 18:54:21 +0100 (CET)
X-Virus-Scanned: amavis at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavis, port 10024)
 with ESMTP id KIBVRoCB9FFK; Thu,  9 Nov 2023 18:54:20 +0100 (CET)
X-Auth-Info: D65YmtZh6ceQvVaqRvkaF4nrFBgkdpw2aViQlao8oenppB0ki/kwgFEEIWX55RnC
Received: from igel.home (aftr-62-216-205-82.dynamic.mnet-online.de [62.216.205.82])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Thu,  9 Nov 2023 18:54:20 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
        id 243B22C1376; Thu,  9 Nov 2023 18:54:20 +0100 (CET)
From:   Andreas Schwab <schwab@linux-m68k.org>
To:     DJ Delorie <dj@redhat.com>
Cc:     Alejandro Colomar <alx@kernel.org>, jg@jguk.org,
        eggert@cs.ucla.edu, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, mattlloydhouse@gmail.com,
        xxc3ncoredxx@gmail.com, kukuk@suse.com,
        adhemerval.zanella@linaro.org, zack@owlfolio.org,
        g.branden.robinson@gmail.com, carlos@redhat.com
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
In-Reply-To: <xncywirg0m.fsf@greed.delorie.com> (DJ Delorie's message of "Thu,
        09 Nov 2023 12:30:17 -0500")
References: <ZUz0igot_qFs3BJX@debian> <xncywirg0m.fsf@greed.delorie.com>
X-Yow:  I'm pretending I'm pulling in a TROUT!  Am I doing it correctly??
Date:   Thu, 09 Nov 2023 18:54:20 +0100
Message-ID: <87o7g2ersj.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Nov 09 2023, DJ Delorie wrote:

> The pedant in me says it should be NUL bytes (or NUL's), not null bytes.
> nul/NUL is a character, null/NULL is a pointer.

NUL is the ASCII abbreviation for Null (see RFC 20).

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
