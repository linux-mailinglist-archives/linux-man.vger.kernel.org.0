Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4ED22442B6C
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 11:12:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbhKBKPJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 06:15:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbhKBKPJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 06:15:09 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CCCBC061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 03:12:34 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id v127so15102967wme.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 03:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qGqqfholKAc38kQxP6CCyWCsiKjXxZOpcKaR2gPU5yU=;
        b=TAufhVu1udcqtY9tIHRZrHem3RaQ6IDjsrRSnTI09aO/WhY5cqqjcLFAraX7ZqCHdr
         F4QpK0DMnn6an0h32cZ4vUG5xyD5vN+XaRxDI8loW57QllnXqPV8RTxXhlSrDZCFNPOa
         XNwMyOwgH9fXbTe9OYdoP2hrPPicSSAlwsV+gSfVEE9/0m7uapfHAfGHRGJdfH5vYNdr
         pBA7OSA/7UOwhusPF/qoVLqmEJz1D+kFAyIoloRc8EuoTVIOSAYR3QdVCJlb90OP5+ZI
         0gHlviXH5WKuL+l95t7aKjgOKRIwJdfyB5MkylfiKbwhl8AlMPd05YSqpXY6iXELQSuF
         Z81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qGqqfholKAc38kQxP6CCyWCsiKjXxZOpcKaR2gPU5yU=;
        b=oxfWCiufHKEhVn8wAhar8bsfMYI/r8zTQVU3HGs1GbuxkRfu5A3knzeKg8jyq0cmZm
         d40ryG3vICV0dchm7kqBQ9ne6rylrw/ZARTj9lS26NmlquiKJZrkPel/hbmT95tlUVs8
         x77WvtCM/Az1GUwvf3WMlg/igd2kYYXt7ZFfLJzRhXhIQCnQxrbzIkyJgx3M7khZtuRR
         7PyLQXI9ZXR0P7GbTxeR64tbpIKbl7xKGyiAemN/K/Jq/RK8afcPonU4ParKK86dskhd
         JBLvGcO+VFO82IuP86tUvIzn7J/SGnW9IvEB5i+6Tzg0DBfy63J7DL7w63ibZshX7j97
         jcBw==
X-Gm-Message-State: AOAM530R901tGzdWEsPRdFL0W5+eAvZjMF8IxsFhAR2nuA0NA7jRz6Pq
        nhJTIhmswC6pEBf4jAYNnEFZ7kZdScE=
X-Google-Smtp-Source: ABdhPJwU3YsPKY/JHw5RrFmMyjvId9lBHQbm8XYfHyXvh2pEo2tFAGMUoKtEPLug4BkH9XOUoM48+A==
X-Received: by 2002:a1c:7e8e:: with SMTP id z136mr4637783wmc.51.1635847952926;
        Tue, 02 Nov 2021 03:12:32 -0700 (PDT)
Received: from [10.8.0.130] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id e18sm15011833wrs.48.2021.11.02.03.12.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 03:12:32 -0700 (PDT)
Message-ID: <12909faf-1d45-1eee-aa6c-c7704518dc59@gmail.com>
Date:   Tue, 2 Nov 2021 11:12:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH 1/1] Document the new fanotify initialization flag
 FAN_REPORT_PIDFD
Content-Language: en-US
To:     Matthew Bobrowski <repnop@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Amir Goldstein <amir73il@gmail.com>
References: <cover.1635135968.git.repnop@google.com>
 <6ea10a58db3446aabc729b1082611bdadb1ce4ed.1635135968.git.repnop@google.com>
 <CAOQ4uxiBJBqfH=eoA8sPven2tXzUmPftKJZCSpw=8f23SoAs0g@mail.gmail.com>
 <YYBV2J4cDWbL6bLu@google.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YYBV2J4cDWbL6bLu@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Matthew,

On 11/1/21 22:02, Matthew Bobrowski wrote:
> On Wed, Oct 27, 2021 at 01:14:49PM +0300, Amir Goldstein wrote:
>> On Wed, Oct 27, 2021 at 12:28 PM Matthew Bobrowski <repnop@google.com> wrote:
>>> +The
>>> +.I fanotify_event_info_header
>>> +structure also contains a
>>> +.I len
>>> +field.
>>> +The value of the
>>> +.I len
>>> +field is the total size of the
>>> +.I fanotify_event_info_pidfd
>>> +structure, which also includes
>>> +.IR fanotify_event_info_header .
>>
>> It would be a shame if we needed to repeat the same text for every new info_type
>> that we add. There should be no duplicate documentation of the
>> fanotify_event_info_header fields. Perhaps we need to describe those fields
>> before documenting fanotify_event_info_fid fields instead of inline in the
>> documentation of hdr field.
> 
> Right, I see where you're coming from and I do generally agree. If we
> continue repeating the same pattern for each bonus event that is based
> on fanotify_event_info_header, then we'll end up unnecessarily
> polluting the documentation.
> 
> Would you like me to try shuffle things around in a patch that
> precedes this one?

Sure.  Would you consider adding an entry to the system_data_types(7) 
manual page documenting that type?

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
