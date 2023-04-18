Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B4F76E6B37
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 19:38:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232395AbjDRRiv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 13:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232354AbjDRRit (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 13:38:49 -0400
X-Greylist: delayed 400 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 18 Apr 2023 10:38:44 PDT
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65A4D5595
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 10:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1681839122;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=hVjpKUlcQBquQiJyDdtzrz/Ykbvc2to8KbwopRRtj/E=;
        b=SS2d0taaX6FT0bxu58sFyGJkwY/zZf8CZNFKFUVl5FsjLpjg/NZZf2A8qaKI/Q7rgbXPKK
        EHeXRKT4oOXQE0Bm21DNLouEzrVntqmMAXsPJZziPSb4nSShtWvq/WyX6ZOUzwER9jkyDZ
        TBM0hQTigbpaR1N3sJvA2afyjFiyUkk=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 817fb971 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Tue, 18 Apr 2023 17:32:02 +0000 (UTC)
Received: from localhost (beryllium [local])
        by beryllium (OpenSMTPD) with ESMTPA id 4da817f6;
        Tue, 18 Apr 2023 19:32:03 +0200 (CEST)
Date:   Tue, 18 Apr 2023 17:32:01 +0000
From:   Lennart Jablonka <vol@ljabl.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] man*/: ffix
Message-ID: <ZD7UEaKv9Gvui9ib@beryllium>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
 <20230417211030.tzxakddee7qehrcw@illithid>
 <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <12c2889f-7f05-8338-b758-5d9b83af536c@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth Alejandro Colomar:
>>> What do standards say about formatting dates?
>>
>> Nothing that I know of.
>>
>>> Do they specify the character?
>>
>> Not that I know of.

ISO 8601:2004 (not the newest revision, but the one I found), the 
standard defining the YYYY‐MM‐DD explicitly calls for a “hyphen,” 
stating additionally:

>In an environment where use is made of a character repertoire based on 
>ISO/IEC 646, “hyphen” and “minus” are both mapped onto “hyphen-minus”.

This is not the case here.  A hyphen is the character to use; that is, 
an unescaped hyphen-minus in the input.

>> Most RFCs don't concern themselves with typography.  :)

RFCs usually tell you that they are talking about ASCII.

>>> However, date(1) only accepts hyphen-minus, so it would be nice to use
>>> a compatible format, even if standards didn't mandate it.

The standard mandates a hyphen.  A hyphen-minus is to be used where the 
date is to be interpreted as a string to be given to \fIdate\fP.

>> By analogy, we don't compose man pages to write "don\[aq]t", even if for
>> some reason a person might want to type "don't" as input to a Unix
>> command.  (I hope they've prepared for its potential interaction with
>> the shell's quoting mechanisms.)  People have gradually realized over
>> the years that typing "don\[aq]t" is derpy and awkward.  Typesetting
>> enthusiasts also note that it gives you a wrongly-shaped apostrophe in
>> DVI, PostScript, and PDF output.
>
>I'm not convinced, because dates are not prose.  Why should we use hyphens
>in dates formatted with standards-like formats?  I would agree in using
>hyphens in dates if we spelled out dates unformatted, in plain English.
>But if we use ISO-like or RFC-like formats, I think we should adhere to
>them completely.

Great!  Exactly my opinion.  An RFC usually tells you to use ASCII, so 
we should do that where applicable.  Luckily, we aren’t concerned with 
RFCs here, but with ISO 8601.

>> I unflinchingly agree with the remainder of the patch.  I simply want to
>> caution against a robotic process of demoting perfectly legitimate
>> hyphens to the crudely compromised hyphen-minus character.
>
>Please explain why they are reasonable there?  What's the use of a
>hyphen in a date?  It's not a compound noun, or something like that.

The use of a hyphen is that it is a character not used in date formats 
preceding ISO 8601.
