Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26AA910E1CF
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2019 13:17:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726389AbfLAMRx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Dec 2019 07:17:53 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:37962 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbfLAMRx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Dec 2019 07:17:53 -0500
Received: by mail-wr1-f67.google.com with SMTP id y17so2011137wrh.5
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2019 04:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XqCMM0kTKJ4FR1cVFSJsjtLkF9EIeqMloP9bJnk7VuI=;
        b=rj12Uo6YXB63w4/DtemQdIKpzjWZCfTvapDFTAW2J9/DMK1kKILbD1DAG2IMPptqBp
         /7n8i3GwOnGlmUjhIS4A7XRu0YoZWGzrZ0YMZRo80NBJC7YzD/h/oveV/5er+Bi59/Dl
         Mj0lK9sGORnr8uiVyNlISt1vWyterDPSXRXXB/1vSQTMEwbOQAhRuxwcGjqextaWMDii
         wtZgISHr+bloOsAxTXYf91HJTjp2kIpv857P1917+gX+wxNgVMJkLQ6fvDpWyN3eVdaa
         7P8BVj+xGIbxoc0CzPJxWFNOTspo98oRJHCySvdcl6PK1Sd6s2Jm2GF4sDZDTooTiGnB
         782g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XqCMM0kTKJ4FR1cVFSJsjtLkF9EIeqMloP9bJnk7VuI=;
        b=gw+msUuQfCE1U+gLj0oDZpmL7g0/tcrQMsfvzIfkW7lmiQn1r/VqXQ2yiMxTRgUqOf
         D6czzHK6PbYU5iFN0CnMxCP2Yzvxvw/nn+4PcXxye2NztSpen8o7CiTRoeRrVxT1Up7s
         6prgKZbtaVXwvZdJpZq1QiZoCtkRq/dYnbZ6NGNYBTS2mV9wt6mbS3Tg/Wb4dW7k0tRe
         mtWaGt0MWKcdfCCIpUEGUrZDJB7x/djS+/+EDFF0Khv2pLDFSk1V6cgnOGYZa4CCDY8C
         Q3wrINt2gdcLf56n+A/hBHJuNZ9bkPvOmyVHzOoxzJTQzIJ43CkmFK49IMENQWYIr9E3
         xm+g==
X-Gm-Message-State: APjAAAUf9HHfDcy4mEJIUqwYiSAk6YVu2yWXn1XTywMClYBsdAfFGCbr
        g1As/ZlXiq0ls8aNpikg3OLW4zTPsU8=
X-Google-Smtp-Source: APXvYqwvBj2QevGoomrUAxGhpmYKfaRb7b5mB+c4XZOh+0rIiTqfiw6s9/sW95ZQcy2vtzMK2eMhTQ==
X-Received: by 2002:adf:82f3:: with SMTP id 106mr19364707wrc.69.1575202671110;
        Sun, 01 Dec 2019 04:17:51 -0800 (PST)
Received: from localhost.localdomain (cpc73834-dals21-2-0-cust682.20-2.cable.virginm.net. [82.0.142.171])
        by smtp.gmail.com with ESMTPSA id b67sm1207164wmc.38.2019.12.01.04.17.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Dec 2019 04:17:50 -0800 (PST)
Subject: Re: [PATCH 2/2] clone.2: added clone3() set_tid information
To:     Adrian Reber <areber@redhat.com>,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org
References: <20191128124650.364810-1-areber@redhat.com>
 <20191128124650.364810-2-areber@redhat.com>
 <20191128172404.xan6vzaoofjeysq2@wittgenstein>
 <20191129135613.GS115039@dcbz.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a25ccb0e-744a-8cb3-4be7-cce83171147c@gmail.com>
Date:   Sun, 1 Dec 2019 13:17:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191129135613.GS115039@dcbz.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Adrian,

Thank you for the patch. I have some review comments below,
and also further comments in my reply to Christian's notes.

On 11/29/19 2:56 PM, Adrian Reber wrote:
> On Thu, Nov 28, 2019 at 06:24:05PM +0100, Christian Brauner wrote:
>> On Thu, Nov 28, 2019 at 01:46:50PM +0100, Adrian Reber wrote:
>>> Signed-off-by: Adrian Reber <areber@redhat.com>
>>> ---
>>>   man2/clone.2 | 90 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 90 insertions(+)
>>>
>>> diff --git a/man2/clone.2 b/man2/clone.2
>>> index 076b9258e..59c13ec35 100644
>>> --- a/man2/clone.2
>>> +++ b/man2/clone.2
>>> @@ -195,6 +195,8 @@ struct clone_args {
>>>       u64 stack;        /* Pointer to lowest byte of stack */
>>>       u64 stack_size;   /* Size of stack */
>>>       u64 tls;          /* Location of new TLS */
>>> +    u64 set_tid;      /* Pointer to a \fIpid_t\fP array */
>>> +    u64 set_tid_size; /* Number of elements in \fIset_tid\fP */
>>>   };
>>>   .EE
>>>   .in
>>> @@ -262,6 +264,8 @@ flags & 0xff	exit_signal
>>>   stack	stack
>>>   \fP---\fP	stack_size
>>>   tls	tls	See CLONE_SETTLS
>>> +\fP---\fP	set_tid	See below for details
>>> +\fP---\fP	set_tid_size
>>>   .TE
>>>   .RE
>>>   .\"
>>> @@ -285,6 +289,74 @@ options when waiting for the child with
>>>   If no signal (i.e., zero) is specified, then the parent process is not signaled
>>>   when the child terminates.
>>>   .\"
>>> +.SS The set_tid array
>>> +.PP
>>> +The
>>> +.I set_tid
>>> +array is used to select a certain PID for the process to be created by
>>> +.BR clone3 ().
>>> +If the PID of the newly created process should only be set for the current
>>> +PID namespace or in the newly created PID namespace (if
>>> +.I flags
>>> +contains
>>> +.BR CLONE_NEWPID )
>>> +then the first element in the
>>> +.I set_tid
>>> +array has to be the desired PID and
>>> +.I set_tid_size
>>> +needs to be 1.
>>> +.PP
>>> +If the PID of the newly created process should have a certain value in
>>> +multiple PID namespaces the
>>> +.I set_tid
>>> +array can have multiple entries. The first entry defines the PID in the most
>>> +nested PID namespace and all following entries contain the PID of the
>>> +corresponding parent PID namespace. The number of PID namespaces in which a PID
>>> +should be set is defined by
>>> +.I set_tid_size
>>> +which cannot be larger than the number of currently nested PID namespaces.
>>
>> "It's upper cap is the kernel-enforced general nesting limit."
>> or sm like that
> 
> Is that an addition to my sentence or a replacement. I think at this
> point it is more important to point out that it cannot be larger than
> the number of currently nested PID namespaces. Later (at EPERM) I am
> also mentioning that it cannot be larger than the maximum number of
> nested PID namespaces. The code does indeed check if set_tid_size is
> larger than the maximum number of possible nested PID namespaces for
> the user, I think, when calling clone3(), it is more relevant that
> set_tid_size is not larger than the number of currently nested PID
> namespaces. The maximum number of possible nested PID namespaces is more
> likely enforced during unshare() or CLONE_NEWPID (which could be
> happening at the same point in time as set_tid_size larger than maximum
> number of nested PID namespace).
> 
> This definitely feels like too much discussion for a single sentence ;)
> 
> I can add a sentence about the maximum number of nested PID namespaces
> here in addition to the one at EPERM.
> I do not think it is relevant for the user at this point in time.

I'm inclined to agree with you. The maximum nesting depth is a general
detail of PID NSs and is already covered in pid_namespaces((7). I think
there's no need to repeat or allude to that detial here the detail here.

Thanks,

Michael
