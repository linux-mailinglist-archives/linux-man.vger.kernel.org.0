Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 488994D8F67
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 23:17:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245199AbiCNWSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 18:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245566AbiCNWSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 18:18:02 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 141CD3D4AF
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 15:16:52 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id b19so3880559wrh.11
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 15:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=53lZitotvOmt4d1I5qfubVq0m2GI4oE6+V6lWEyTcmo=;
        b=QiBfphY2X3JJAod1+tJKB4RKxZbYDH1GmhSD0lpvH80WXLtY8/0VJ6/kFVBKqVnVvq
         zb3kMn74bHsr444PsVKXeZY7rmq/arM/kNOtL3XkFyrqk66n+dwdEABjzhTVA3W3U+LW
         qBUP74usOqserZlRsyA+KSXji9Rd/kMmVCY2CQaQR/SJjNIanNUEmjTyIBfW5jxGYA4V
         F6vLBVqvH9yhOs3RVMJwErTVD2V73JQZ+IRfhxh0g2XwHMqv2j4TXOQk3W0YO5yEJHsy
         HENOFVxvUE5ARGn3FzBXGLrGKApxB9TynMpPnswtWp0AZkFvntrsZg4a1uqs+uJV8jfP
         CAVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=53lZitotvOmt4d1I5qfubVq0m2GI4oE6+V6lWEyTcmo=;
        b=x8AxGLptAo6b8PCSyQwfPG3wFMjwDKdwKaEBoFDI39dfb3tA8089V2YCZlTiUr+Aox
         I01Q1NU+Q/eN7Bu1Li9MBS7KEGW5MVpM9n+xisJ73Q/vt0NwaBALtQ8Xi7vfGi9eAKGV
         NmogoaZ3J9RTh+tpwMtuf85fBBi0dLF8AEZitECsSLF2W1ma6sylzDAZhdKJXaN/+NIK
         yeychEWPMw7dWZoGW927wwD/QvYRbmyJzFQ7O4JD9gFvkQJzwH3PJTrip6YVL8OfGMLX
         H4uQVdophXV4T3h5pyjwhO89GP6QqJOagSRzWDAnNUvAhJrrQS5mZ27+jbk9Nvk8/Ty1
         cP5w==
X-Gm-Message-State: AOAM531t5WWbqUES+NOmJ1ZR5S4RRrV772w9AfznsUWmTe8CRJYVsWLI
        HlpYkWtO0kNYkFdctuYPjRw=
X-Google-Smtp-Source: ABdhPJx+be1nfcT+YVqm23I8TNOyOYy/vJiPXw8624z1/6t4uxEPvqSBQNCiKFB3tOz/Vm5d1dlyVA==
X-Received: by 2002:a5d:4ad2:0:b0:203:d56d:9c82 with SMTP id y18-20020a5d4ad2000000b00203d56d9c82mr129821wrs.307.1647296210565;
        Mon, 14 Mar 2022 15:16:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v5-20020adfe4c5000000b001edc1e5053esm14036656wrm.82.2022.03.14.15.16.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 15:16:50 -0700 (PDT)
Message-ID: <12444329-b272-373c-4255-e39584a6716e@gmail.com>
Date:   Mon, 14 Mar 2022 23:16:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     =?UTF-8?Q?P=c3=a1draig_Brady?= <P@draigBrady.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Cc:     Gnulib bugs <bug-gnulib@gnu.org>, Coreutils <coreutils@gnu.org>,
        Andreas Schwab <schwab@linux-m68k.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Colin Walters <walters@redhat.com>,
        Ondrej Holy <oholy@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Neil Brown <neilb@suse.com>, Paul Eggert <eggert@cs.ucla.edu>
References: <ed3ac15c-9e92-73b7-b7f9-8281488e8778@draigBrady.com>
 <3a4c9f63-0203-a810-6113-5c77a16e3690@cs.ucla.edu>
 <95140173-2913-e377-5824-8a569ac78b5b@draigBrady.com>
 <5c608ef7-f279-6afc-37f5-6a50442a3143@cs.ucla.edu>
 <bdd68a31-ef3a-f022-bc72-c051690cee59@draigBrady.com>
 <6645f678-4293-4692-8472-eee0bacee63f@cs.ucla.edu>
 <670898ee-3b1c-97cd-290c-b6d91bfdaa07@draigBrady.com>
 <5612cf59-a6da-6974-6a97-e406a4f4d557@cs.ucla.edu> <87bkyemetm.fsf@igel.home>
 <9293ccdd-ca30-81b3-2042-c91327da6b28@draigBrady.com>
 <dad1522f-21ee-620e-8fcf-b290bbb9aba5@gmail.com>
 <4a4ad936-bb1c-328c-dd43-95f4abbb905c@draigBrady.com>
 <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
In-Reply-To: <9488e311-ab35-96ee-7791-ec65fa6fe948@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pádraig,

On 3/14/22 20:56, Alejandro Colomar (man-pages) wrote:
> Please send the patch inline (or both inline and attached),
> if you don't mind.
> However, if it's a big hassle for you,
> I can apply it from an attachment.

Thanks for the inline patcx.
> ---
> 
>>
>> Subject: [PATCH] fix descriptions for AT_NO_AUTOMOUNT
>>
[...]
>>
>> Signed-off-by: Pádraig Brady <P@draigBrady.com>
> 
> Makes sense to me.
> But see a few minor comments below.

But you missed the comments below :)
Please fix them (see below).

Thanks,

Alex

[...]
>> diff --git a/man2/statx.2 b/man2/statx.2
>> index 04b3e5075..d4e638756 100644
>> --- a/man2/statx.2
>> +++ b/man2/statx.2
>> @@ -195,11 +195,23 @@ Don't automount the terminal ("basename") component of
>>  if it is a directory that is an automount point.
>>  This allows the caller to gather attributes of an automount point
>>  (rather than the location it would mount).
>> -This flag can be used in tools that scan directories
>> -to prevent mass-automounting of a directory of automount points.
>> +This
>> +flag has no effect if the mount point has already been mounted over.
> 
> Weird break point there.
> I see that it was like that in existing code, but please fix it :)

check

> 
>> +.IP
>>  The
>>  .B AT_NO_AUTOMOUNT
>> -flag has no effect if the mount point has already been mounted over.
>> +flag can be used in tools that scan directories
>> +to prevent mass-automounting of a directory of automount points.
>> +.IP
>> +All of
>> +.BR stat () ,
> 
> s/() ,/(2),/

check

> 
>> +.BR lstat () ,
> 
> s/() ,/(2),/

check

> 
>> +and
>> +.BR fstatat ()
> 
> s/()/(2)/

check

> 
>> +act as though
>> +.B AT_NO_AUTOMOUNT
>> +was set.
>> +.IP
>>  This flag is Linux-specific; define
>>  .B _GNU_SOURCE
>>  .\" Before glibc 2.16, defining _ATFILE_SOURCE sufficed
>> -- 
>> 2.31.1
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
