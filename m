Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D08ED63C33F
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 15:58:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235272AbiK2O6P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 09:58:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235032AbiK2O6P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 09:58:15 -0500
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00B9425E96
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 06:58:13 -0800 (PST)
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out1.suse.de (Postfix) with ESMTP id 30E2821886;
        Tue, 29 Nov 2022 14:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1669733892; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=n++Nf2MCH5rVFT7roWsqqkOCzfZUzNG91kCL8v1Ejq8=;
        b=SXKGNLUH3uuNl19MUwGGy272aUlFCNdkhyD2DNMBBnkC8Yfm3+3AUDTsKiY+qcvdvn9U7e
        XT/uInZhr/2CJO2Kr4ytLk6cxCDmPuyQiJoncPjf8LgwUog28lq8hUBbEX8gCBzHjBFX15
        3RoST+Wk+20knOSyEbe8m42hm4aWTEY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1669733892;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=n++Nf2MCH5rVFT7roWsqqkOCzfZUzNG91kCL8v1Ejq8=;
        b=MmlgHEKn5sBMdZ9lVmgxOIMKEW0S6m3T3zuDrZub9kyAlJSKd0nZXd0YKnsWXoS3KEMNmD
        0sVOMv0inNdERvBA==
Received: from wotan.suse.de (wotan.suse.de [10.160.0.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 1A4C32C141;
        Tue, 29 Nov 2022 14:58:11 +0000 (UTC)
Received: by wotan.suse.de (Postfix, from userid 10510)
        id BF47D65E2; Tue, 29 Nov 2022 14:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
        by wotan.suse.de (Postfix) with ESMTP id BD4CA6238;
        Tue, 29 Nov 2022 14:58:11 +0000 (UTC)
Date:   Tue, 29 Nov 2022 14:58:11 +0000 (UTC)
From:   Michael Matz <matz@suse.de>
To:     Alex Colomar <alx.manpages@gmail.com>
cc:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>,
        Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
In-Reply-To: <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
Message-ID: <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
References: <20220826210710.35237-1-alx.manpages@gmail.com> <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com> <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at> <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com> <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com> <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at> <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com> <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com> <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com> <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com> <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at> <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com> <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com> <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at> <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
User-Agent: Alpine 2.20 (LSU 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey,

On Tue, 29 Nov 2022, Alex Colomar via Gcc wrote:

> How about the compiler parsing the parameter list twice?

This _is_ unbounded look-ahead.  You could avoid this by using "." for 
your new syntax.  Use something unambiguous that can't be confused with 
other syntactic elements, e.g. with a different punctuator like '@' or the 
like.  But I'm generally doubtful of this whole feature within C itself.  
It serves a purpose in documentation, so in man-pages it seems fine enough 
(but then still could use a different puncuator to not be confusable with 
C syntax).

But within C it still can only serve a documentation purpose as no 
checking could be performed without also changes in how e.g. arrays are 
represented (they always would need to come with a size).  It seems 
doubtful to introduce completely new and ambiguous syntax with all the 
problems Joseph lists just in order to be able to write documentation when 
there's a perfectly fine method to do so: comments.


Ciao,
Michael.
