Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C31BB64955C
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 18:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbiLKRa5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 12:30:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLKRa4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 12:30:56 -0500
Received: from mail.smrk.net (mail.smrk.net [IPv6:2001:19f0:6c01:2788:5400:4ff:fe27:adaa])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3448C2AE5
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 09:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smrk.net; s=20221002;
        t=1670779850;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HK0GeDOxwF5AZgoAzfWq3H3XGDU7emVirJr12WvWBqA=;
        b=X56KGLtrJEKOPyR59TAYKt+H268f2vWbDGk6GgoAEFI2WSgbWl5CL7AppiI6JXKxqUIxVH
        FDInmvjMMjn1T6O3LrjtFg+5hE21gyvKm98AqlHMv9rx1NS/PfjISxtQCcRkGTvEavXaNN
        yc0cr3fsBZg0W6JV0Js3o+afroyxnX9ES4mVmEte6A58iluG2KNt5h9U1BYFr4ZmAJB8M+
        3FagYDjSEH+IopfJmZrgHJ2qhhzEtfANEEf2Ss8Pblx/8oFBFQtUdcDruVbmr2lXhz/JWg
        8t+CkyAM4XTFRWY5/wxbGhwWu2/FCOzE3fApxPLTeky+9p6X+Gik0JKc3VARqQ==
Received: from localhost (<unknown> [192.168.5.2])
        by smrk.net (OpenSMTPD) with ESMTPSA id c376ccf7 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Sun, 11 Dec 2022 18:30:48 +0100 (CET)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
In-Reply-To: <f79f3230-8001-12e7-1a93-5aec55b070a0@gmail.com>
References: <20221208091442.10595-1-vapier@gentoo.org>
 <20221208163413+0100.348521-stepnem@smrk.net>
 <f79f3230-8001-12e7-1a93-5aec55b070a0@gmail.com>
User-Agent: Notmuch/0.37 (https://notmuchmail.org) Emacs/29.0.50
 (x86_64-pc-linux-gnu)
Date:   Sun, 11 Dec 2022 18:30:48 +0100
Message-ID: <20221211183048+0100.234579-stepnem@smrk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 11 Dec 2022 17:05:48 +0100
Alejandro Colomar wrote:

> On 12/8/22 16:34, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
>> On Thu,  8 Dec 2022 04:14:42 -0500
>> Mike Frysinger wrote:
>>=20
>>> @@ -106,15 +107,15 @@ calls fail, or if the function cannot allocate me=
mory,
>>>   NULL is returned.
>>>   .PP
>>>   .BR pclose ():
>>> -on success, returns the exit status of the command; if
>>> +on success, returns the exit status of the command; if one of the
>>>   .\" These conditions actually give undefined results, so I commented
>>>   .\" them out.
>>>   .\" .I stream
>>>   .\" is not associated with a "popen()ed" command, if
>>>   .\".I stream
>>>   .\" already "pclose()d", or if
>>> -.BR wait4 (2)
>>> -returns an error, or some other error is detected,
>>> +.BR wait (2)
>>> +family of calls returns an error, or some other error is detected,
>>>   \-1 is returned.
>>>   .PP
>>>   On failure, both functions set
>>=20
>> I'll just point out that, if this goes in, putting "one of the" _after_
>> the comment would prevent rendering it incomprehensible.
>
> Yes, thanks for pointing that out!
>
> I'd move the entire "if one of the".

That would cause the same issue, though.  AIUI, the "original" text read:

  on success, returns the exit status of the command; if
  .I stream
  is not associated with a "popen()ed" command, if
  .I stream
  already "pclose()d", or if
  .BR wait4 (2)
  returns an error, or some other error is detected,

Then someone commented out lines 2-5 and added two lines of rationale:

  on success, returns the exit status of the command; if
  .\" These conditions actually give undefined results, so I commented
  .\" them out.
  .\" .I stream
  .\" is not associated with a "popen()ed" command, if
  .\".I stream
  .\" already "pclose()d", or if
  .BR wait4 (2)
  returns an error, or some other error is detected,

Both Mike's change and your alternative proposal would make this quite
unobvious to future readers without resorting to VCS archaeology,
because the commented-out text would no longer make sense as a
continuation of the preceding text.

--=20
=C5=A0t=C4=9Bp=C3=A1n
