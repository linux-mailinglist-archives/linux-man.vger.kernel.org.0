Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38E42622F16
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:32:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231835AbiKIPcz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:32:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbiKIPcy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:32:54 -0500
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl [195.121.94.186])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAA211141
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:32:51 -0800 (PST)
X-KPN-MessageId: 5c7dcae2-6043-11ed-b97e-00505699b430
Received: from smtp.kpnmail.nl (unknown [10.31.155.7])
        by ewsoutbound.so.kpn.org (Halon) with ESMTPS
        id 5c7dcae2-6043-11ed-b97e-00505699b430;
        Wed, 09 Nov 2022 16:29:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xs4all.nl; s=xs4all01;
        h=content-type:to:from:subject:mime-version:date:message-id;
        bh=M3fLcv/cOiBOJaOZmM4N16tUF28eL1de7tUTS1JmqWU=;
        b=vZiuLpp306/602QMVBiUT/R/XUdQFl+e2uYcFi9xr+/Ev2RzfYI2Wb3ywTjkK8XVAko1pNTYs4jrF
         fgZLSBjFip2GpbAQgAosKIZ+GLLgrXxpE8N/m6slY74NGm2OLLfyee7dXYO9QhoTJGSPwIiMt+GW3r
         vqQmo6v9JKHJ4hrFcw2Ap+dAwLWKMrW91RtN8Z9UZME1iHGy+qZZeAoZfhGQ97dttXEJ1R9ZppV4zy
         GJMm9XjBYXVPqNL9h/dWwtzlPxqxTDJXdT+HtS2EACmSZrCg1/7Jq/v60DM5VtkHWF5tJ+zwloGowJ
         DHK7QJdB9hQvPp1QnHz1LcqbmaBMxew==
X-KPN-MID: 33|iE2yxwk0BrN5vtAqA/Iku47zExGWZfKUvqpTeE9PmHXLzesMwg5uIv4KtOD2xTN
 84BJXFX/gkzkyHdsc6riDYIPZUHNB+bbxqmCOWRdz+Xo=
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|IsEPBqLm6Q5RkI/hlGzwxszK6Mu0TpRZpizMITWxw+hLLRbbaNVJ+5l2qGKeUEl
 jEq+/JzMNOC8dTJNmmQWgBw==
X-Originating-IP: 77.173.35.122
Received: from [192.168.178.20] (77-173-35-122.fixed.kpn.net [77.173.35.122])
        by smtp.xs4all.nl (Halon) with ESMTPSA
        id c4cd119a-6043-11ed-8bc9-005056998788;
        Wed, 09 Nov 2022 16:32:50 +0100 (CET)
Message-ID: <bed32e47-5b71-70dc-f231-928e742542c3@xs4all.nl>
Date:   Wed, 9 Nov 2022 16:32:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: Fwd: Simple changes to select(2) and pipe(7) - example program
Content-Language: en-US
From:   "J.H. vd Water" <henri.van.de.water@xs4all.nl>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <30847211-efc7-12be-6ce9-c5c4ada16805@xs4all.nl>
 <9f23de64-4748-5176-1caa-f05b9f4d5f0f@gmail.com>
 <0fd276c7-3aab-0075-8a54-1371e4fad925@gmail.com>
 <2d4d8b7b-5890-cd9f-061d-6d259d8ed6ee@xs4all.nl>
In-Reply-To: <2d4d8b7b-5890-cd9f-061d-6d259d8ed6ee@xs4all.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/9/22 16:06, J.H. vd Water wrote:
> On 11/9/22 15:15, Alejandro Colomar wrote:
>> Hi Henri,
> 
>> I've forwarded the emails I got from you to the mailing list, for an
>> open discussion.  If I'm missing any, please resend including to the
>> list, and preferrably as a reply to this thread.
> Oops!
> 
> Hi Alex,
> 
> Only just now I finished an e-mail, that I intended to send to the list ...
> 
> (Sorry, I am that quick anymore)

Sigh! Sorry, I am *NOT* that quick anymore ...

Henri
