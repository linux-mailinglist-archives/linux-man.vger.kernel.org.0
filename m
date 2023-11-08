Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B58C7E60D8
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 00:06:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjKHXGo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 18:06:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbjKHXGn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 18:06:43 -0500
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8463258E
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 15:06:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 460DB3C011BD9;
        Wed,  8 Nov 2023 15:06:41 -0800 (PST)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id sU6EhlcFMU0O; Wed,  8 Nov 2023 15:06:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id EE2703C011BDA;
        Wed,  8 Nov 2023 15:06:40 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu EE2703C011BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1699484801;
        bh=1QuHkpj35daVbDuBjXuCacxd7jO2b+p5QO0TnrBtTHQ=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=WBS3t3gvA/463u2K6yuB+ZfPHLGYbDqFyMY0IHiTgdoelI+d7Vb+ZT/mqt7rDu6F7
         QJQz9EvPUBA1rswMhH2B0pfmrHkJPCMDwMXjg1P9aLVvmothJd2/cYhf45K25CCPzd
         js5//zuyj0j/5oZhiF2X3lw/DxqMBIfomrQ22UMLumKFcSHFLXWszLXlNBdKC1ieHh
         HzAT60fZhPOnbj3wltM2gvuRNORMAJeuUea2gVr5c0PfLWYhBwlbxs+JpLNJN05UqT
         8LWf7HYcfdYojCEKx2GZlu6F+MmSX6JdVpWuuAh6HyhpIWqpJMxy16gnkdj6RDigOK
         Cq9oBTPikOdQQ==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id fyeogJ9aey5a; Wed,  8 Nov 2023 15:06:40 -0800 (PST)
Received: from [131.179.50.221] (wifi-131-179-50-221.host.ucla.edu [131.179.50.221])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id B8CCF3C011BD9;
        Wed,  8 Nov 2023 15:06:40 -0800 (PST)
Message-ID: <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
Date:   Wed, 8 Nov 2023 15:06:40 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc:     libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
        Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
References: <ZUwCwxyPfur-hfea@debian> <20231108221638.37101-2-alx@kernel.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <20231108221638.37101-2-alx@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/8/23 14:17, Alejandro Colomar wrote:
> These copy*from*  a string

Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be 
a string.

By the way, have you looked at the recent (i.e., this-year) changes to 
the glibc manual's string section? They're relevant.
