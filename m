Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5BC296C58
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 11:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S461721AbgJWJuT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 05:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S461667AbgJWJuT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 05:50:19 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5321C0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 02:50:18 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id c194so802104wme.2
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 02:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TL9wc7vSOww8p0bzENiqoM/KP4T+Ihb7gpxrgRQiL10=;
        b=feGU7huwU72pAQpLCIaQcrZr6rlBmikXfvxL9KB2U/mGdVrLvr0WNhKE2Wi4hlvhU2
         jNMwCZ2PT5+P+vx62L1aW1Kmtm8/uz8H5hR7PZehbm42jKJi+RNBE1M9N32BEeuI/pwZ
         tDyoF78n1ZOo4Le030gSfFTE5WBqGjPoLUirbFHiP1AbXkDuep8f7Zgdz2gvdVBtXmDK
         wo66p6PpmxZqX7ySv/EiAUt+1rapeJk3LW8Gy4JDJ+QcOi/oJALzKzepfk19QiDy2tNH
         5tSMFaQQoL9RSxaiB8JsLIdy40tEIGdVjm2ax+pak8ZI4kNC8WZma/HuzQ0+dig8DI9q
         wz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TL9wc7vSOww8p0bzENiqoM/KP4T+Ihb7gpxrgRQiL10=;
        b=BwLQauEFUpx2beeFf++dvizOA66Uxqb/5yAKG44ALvptVDXsBBG8N8cqDo2mbZ1oJl
         /qWYbh8U2Jf/XOZHe3mD1baTM0SDj8n/sAYKh4IeGbRu04yTv0klwbLvD1VzMy+zWB0r
         wKHP32nHye3PsCzL9hYtB3C3yR5ygB+U5nRgF+6POcRkEEnNxGpzBBhcihPm86CeMQXP
         3c9qeOG/Dg5NubhSpZvqP4ToCH49QkF4vxKr/E3ET3NCb3iey/lA0lgDDYFyaZAlbQFK
         HwOKz1A+ifzJ2DRxdK8V7A7DlJGuw+BJZ8mnOJlASO7yOi88sUivRdnPKX62LAR7wKfI
         7Bvg==
X-Gm-Message-State: AOAM530LuGaMjn/09goIXq5i8sbKVwJ3q7/yjTnEl/pn5UMvVfXFcUNL
        2Ph40YuivzO2A+7uHwPDRgMp1P9fDJQ=
X-Google-Smtp-Source: ABdhPJyvfCs3InrCTZe7NoDIGdWnyW/spMpEi1PCDCY55PEPXwDI5qqvMk5yf0l81U9F58ttgghdrg==
X-Received: by 2002:a1c:48d4:: with SMTP id v203mr1412145wma.122.1603446615961;
        Fri, 23 Oct 2020 02:50:15 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v6sm2168301wmj.6.2020.10.23.02.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 02:50:15 -0700 (PDT)
Subject: sys/queue.h: Add macros present on BSDs
To:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Hans Petter Selasky <hps@selasky.org>,
        linux-man <linux-man@vger.kernel.org>
References: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
 <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
 <907cf2f7-70de-42c3-a738-d7e6a14327de@gmail.com>
 <e8cc9a94-d017-7f2b-cf5c-827cdcd6d2a0@selasky.org>
 <213d9db0-ebf5-ddcc-c796-2478143db9c9@gmail.com>
 <d9b8f226-2972-d238-ff7a-0298104e07e9@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <75e66480-ccbf-d2f0-7787-5a1b2573d622@gmail.com>
Date:   Fri, 23 Oct 2020 11:50:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d9b8f226-2972-d238-ff7a-0298104e07e9@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-21 06:53, Michael Kerrisk (man-pages) wrote:
> On 10/20/20 1:42 PM, Alejandro Colomar wrote:
>>
>>
>> On 2020-10-20 13:22, Hans Petter Selasky wrote:
>>> Hi,
>>>
>>> You may want to import new queue macros from FreeBSD, especially for C++
>>> use.
>>>
>>> https://svnweb.freebsd.org/base/head/sys/sys/queue.h
>>>
>>> https://svnweb.freebsd.org/base?view=revision&revision=284915
>>>
>>> --HPS
>>
>>
>> Hi Hans,
>>
>> Thanks for the suggestion.
>>
>> I'll add the documentation to the manual pages commented out
>> (as with other queue.h macros that aren't present on glibc),
>> and if glibc adds them in the future,
>> it can then be uncommented.
> 
> Thanks for that, Alex. (And thanks for the heads-up, Hans.)
> 
> Cheers,
> 
> Michael
> 


After Hans' suggestion,
I decided to find all <sys/queue.h> macros
available on BSDs and not on glibc.
You may want to add them to glibc.
I'll write them when I have some time.

Here's the list of what I could find:


* OpenBSD:

struct TYPE *
SLIST_END(SLIST_HEAD *head);

SLIST_FOREACH_SAFE(VARNAME, SLIST_HEAD *head, FIELDNAME, TEMP_VARNAME);

void
SLIST_REMOVE_AFTER(struct TYPE *elm, FIELDNAME);


struct TYPE *
LIST_END(LIST_HEAD *head);

LIST_FOREACH_SAFE(VARNAME, LIST_HEAD *head, FIELDNAME, TEMP_VARNAME);

void
LIST_REPLACE(struct TYPE *elm, struct TYPE *elm2, FIELDNAME);


struct TYPE *
SIMPLEQ_END(SIMPLEQ_HEAD *head);

SIMPLEQ_FOREACH_SAFE(VARNAME, SIMPLEQ_HEAD *head, FIELDNAME, TEMP_VARNAME);

void
SIMPLEQ_REMOVE_AFTER(SIMPLEQ_HEAD *head, struct TYPE *elm, FIELDNAME);


struct TYPE *
TAILQ_END(TAILQ_HEAD *head);

TAILQ_FOREACH_SAFE(VARNAME, TAILQ_HEAD *head, FIELDNAME, TEMP_VARNAME);

TAILQ_FOREACH_REVERSE_SAFE(VARNAME, TAILQ_HEAD *head, HEADNAME, 
FIELDNAME, TEMP_VARNAME);

void
TAILQ_REPLACE(TAILQ_HEAD *head, struct TYPE *elm, struct TYPE *elm2, 
FIELDNAME);


struct TYPE *
CIRCLEQ_END(CIRCLEQ_HEAD *head);

CIRCLEQ_FOREACH_SAFE(VARNAME, CIRCLEQ_HEAD *head, FIELDNAME, TEMP_VARNAME);

CIRCLEQ_FOREACH_REVERSE_SAFE(VARNAME, CIRCLEQ_HEAD *head, FIELDNAME, 
TEMP_VARNAME);

void
CIRCLEQ_REPLACE(CIRCLEQ_HEAD *head, struct TYPE *elm, struct TYPE *elm2, 
FIELDNAME);


* FreeBSD:

SLIST_CLASS_ENTRY(CLASSTYPE);

SLIST_CLASS_HEAD(HEADNAME, CLASSTYPE);


STAILQ_CLASS_ENTRY(CLASSTYPE);

STAILQ_CLASS_HEAD(HEADNAME, CLASSTYPE);


LIST_CLASS_ENTRY(CLASSTYPE);

LIST_CLASS_HEAD(HEADNAME, CLASSTYPE);


TAILQ_CLASS_ENTRY(CLASSTYPE);

TAILQ_CLASS_HEAD(HEADNAME, CLASSTYPE);


* Interesting, but not present on BSDs (at list on the ones I checked):

SIMPLEQ_CLASS_ENTRY(CLASSTYPE);

SIMPLEQ_CLASS_HEAD(HEADNAME, CLASSTYPE);


CIRCLEQ_CLASS_ENTRY(CLASSTYPE);

CIRCLEQ_CLASS_HEAD(HEADNAME, CLASSTYPE);
