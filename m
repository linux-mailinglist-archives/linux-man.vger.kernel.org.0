Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0272663AE
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 18:22:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726173AbgIKQWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 12:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726181AbgIKP2e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 11:28:34 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16F7FC061757;
        Fri, 11 Sep 2020 08:28:34 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l9so5187564wme.3;
        Fri, 11 Sep 2020 08:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1BB9JHSvWV/knAkuiQWfPijYXPNnyQ+2JuUiQV6W6Co=;
        b=hwGFgj6rLFGOvu+SssqhWzZFJEv8sPF5dIxYcGW++Eeox4zHxIA8V3jnztSNZcC5HA
         7GYHV6vMUV78fu6uOr695EyySJpQchFnAzxwdnml9WBnTpujtdkneRN6etPKcRNXlJEy
         IY91k0GWNzqylGCxSdfvmr6g6IKMAnOiUt+mpMgwx6knE3OxB0VIRbML8d2VrqBeum3e
         IQQWFFcHusMwprkT0OB8OKCabfFc4ACHelN0ZkzfDMSIuw0NUV5DU3KiFWfRO7HY9oJr
         Pwynlzf1pRD6b0lvmEmqLfxOZi4epzjRfe0fVAg7OH0CvbTgipYsInBQTPzyhneniZl2
         LJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1BB9JHSvWV/knAkuiQWfPijYXPNnyQ+2JuUiQV6W6Co=;
        b=ANK67CUB2f8n7hHQ2uB0bN17/IfXpFt5b0x9jgG5Itdc+3A0NPFgRTMnmvY+mP4+hQ
         rxqqEqbgI1GaziZahtdIW1No7yFtFq3kjhmhhgMKrYtcFU6L+Rfrxgco9fJaTK0eQtsY
         p/iB5m9NttK1yXA/4HyhtTFE1euHlgoldg/BtUCAaADEDVCxDw6HqdRfto5cGnAY65G+
         HTiWfyWjfYNYR47f5SPOLdnlHxiUWqkIsEfbFlhhWofbu6tW3l1V8MhMH7p5boyToL9x
         f4W+l4GVmsVslsNEd/YTj5KqQeeDgN4EHkk4xCMuvkAjpsqlVlU+TLiQMdvT6dqwHOn9
         QPOw==
X-Gm-Message-State: AOAM530NreBzxunPtqewmu9vzvj44xUDWUzF9Bt/x9PVKiDgqRwPXBtk
        Ms0ZZLttn3iCBotZj5qFM7ThmvSTPWA=
X-Google-Smtp-Source: ABdhPJxZ37zKSDi/TZF/gdLnnwwzC878nrj8mTt1e42H+rmVQ8OpYdwtkXBfiwhn8Nl6P7tf8kFrAw==
X-Received: by 2002:a7b:c14d:: with SMTP id z13mr2743776wmi.107.1599838112235;
        Fri, 11 Sep 2020 08:28:32 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d3sm5360958wrr.84.2020.09.11.08.28.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 08:28:31 -0700 (PDT)
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
Date:   Fri, 11 Sep 2020 17:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stefan,

On 2020-09-11 16:35, Stefan Puiu wrote:
 > Hi,
 >
 > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
 > <colomar.6.4.3@gmail.com> wrote:
 >>
 >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >> ---
 >>   man3/getgrent_r.3 | 2 +-
 >>   1 file changed, 1 insertion(+), 1 deletion(-)
 >>
 >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
 >> index 81d81a851..76deec370 100644
 >> --- a/man3/getgrent_r.3
 >> +++ b/man3/getgrent_r.3
 >> @@ -186,7 +186,7 @@ main(void)
 >>
 >>       setgrent();
 >>       while (1) {
 >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
 >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
 >
 > I'm worried that less attentive people might copy/paste parts of this
 > in their code, where maybe buf is just a pointer, and expect it to
 > work. Maybe leaving BUFLEN here is useful as a reminder that they need
 > to change something to adapt the code?
 >
 > Just my 2 cents,
 > Stefan.
 >
That's a very good point.

So we have 3 options and I will propose now a 4th one.  Let's see all
of them and see which one is better for the man pages.

1.-	Use the macro everywhere.

pros:
- It is still valid when the buffer is a pointer and not an array.
cons:
- Hardcodes the initializer.  If the array is later initialized with a
   different value, it may produce a silent bug, or a compilation break.

2.-	Use sizeof() everywhere, and the macro for the initializer.

pros:
- It is valid as long as the buffer is an array.
cons:
- If the code gets into a function, and the buffer is then a pointer,
   it will definitively produce a silent bug.

3.-	Use sizeof() everywhere, and a magic number for the initializer.

The same as 2.

4.-	Use ARRAY_BYTES() macro

pros:
- It is always safe and when code changes, it may break compilation, but
   never a silent bug.
cons:
- Add a few lines of code.  Maybe too much complexity for an example.
   But I'd say that it is the only safe option, and in real code it
   should probably be used more, so maybe it's good to show a good practice.


Here's my definition for ARRAY_BYTES(), which is makes use of
must_be_array() similar to the kernel ARRAY_SIZE():

4.1-

#define is_same_type(a, b)					\
	__builtin_types_compatible_p(__typeof__(a), __typeof__(b))
#define is_array(a)			(!is_same_type((a), &(a)[0]))
#define must_be__(e, ...)	(				\
	0 * (int)sizeof(					\
		struct {					\
			_Static_assert((e)  __VA_OPT__(,)  __VA_ARGS__); \
			char ISO_C_forbids_a_struct_with_no_members__; \
		}						\
	)							\
)
#define must_be_array__(a)	must_be__(is_array(a), "Not an array!")
#define ARRAY_BYTES(arr)	(sizeof(arr) + must_be_array__(arr))


The macro makes use of quite a few GNU extensions, though, which might
be too much to ask.

Actually, I was also going to propose this macro for the kernel itself,
to make it a bit safer.

There's a much simpler version of ARRAY_BYTES(), which requires the
macro to be defined in a header that is not a system header (to avoid
silencing warnings), and also requires a recent version of the compiler
to show a warning:

4.2-

#define ARRAY_SIZE(arr)		(sizeof(arr) / sizeof((arr)[0])
#define ARRAY_BYTES(arr)	(sizeof((arr)[0]) * ARRAY_SIZE(arr))


What do you all think about the 5 different options?  I don't know which
one is better.
