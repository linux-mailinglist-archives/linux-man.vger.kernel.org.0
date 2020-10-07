Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF9832858D4
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 08:53:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727293AbgJGGxm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 02:53:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727278AbgJGGxm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 02:53:42 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41E41C061755
        for <linux-man@vger.kernel.org>; Tue,  6 Oct 2020 23:53:42 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id h7so823524wre.4
        for <linux-man@vger.kernel.org>; Tue, 06 Oct 2020 23:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ORAHLnhzbOo88SOqXEi9ztdww7mIp1O98MuvKTCrqHs=;
        b=H3S90JbkwDt7TjASx5+R9p4yqlvdrGZ60h1HMTrGh+yPlOBab6bPpJNRVXm9sJcvv7
         mLrrRddHhaMKVLq/ph3TEKwgCGV9VOuphLZtHGoY5C/Y/w5wU/bzDNO+xQLJ/x+Yu4zV
         RfBXYdF8tyJE0YtF1YWP5x5CtFHdwCrVNVVb6AHNMoWtJjf3plhPbTEIuavFBzujeO3i
         PCjhWWwwuvo/2gJS5qiDmikBbhKbHcaNOBENdcy5ZS816lytbbtSgqfv5bpgYfhdOv9C
         +6gDsttQzWpNtnFvY1STDF2yuXWuI8Lza5DwXEk0gz8G6YuCIn5HPN2GydVhFKKxD/BA
         Cn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ORAHLnhzbOo88SOqXEi9ztdww7mIp1O98MuvKTCrqHs=;
        b=TmSujUl+Nrw/DniyF4QLSuZNLD2XrdlqU0u+/RMOnbId3/L3IuqlbMwVTmngVN78MI
         0vXpGraCXRqbGoiYoRuVmP/8/1FKe5fdrvys/85fMhfxfii/ceBtO+UqIoyMVDDTX+DS
         ocV+losgqP2fxb/nwZaZHtkyobPR+Re+gsjxa6cQP/IPv/mkNANpyrYslCq3c3Y4oZWn
         hTFxVzCFZldNSJ6toqxb0E5Cd3afHMjMaZ+WloejB1e0a9Dh7NcgFR0rOJZfoWQx5l1i
         hyDzhbxd8GJeU9B+yoq7gNM9dL/JIklgNnoG3LhqzYHgbQaBZXRHfnLbZu2GIVVEObpL
         upEA==
X-Gm-Message-State: AOAM532xVQNIEaJuLOAKU3UagnkQHJM1Q27dEEhl4+6U2itSbiVdxkpe
        hAitLr4T5xD6OIUilNkHPHkB5UpzKidOcA==
X-Google-Smtp-Source: ABdhPJyd9mun5POanBN+2OSAohOUSvmUuWH2YcOAHiOnUDXFJSQU4JXkBXQCUYewA9QhDeIGv7ypAA==
X-Received: by 2002:adf:e8cf:: with SMTP id k15mr1747006wrn.262.1602053620952;
        Tue, 06 Oct 2020 23:53:40 -0700 (PDT)
Received: from [192.168.43.156] (dynamic-046-114-000-081.46.114.pool.telefonica.de. [46.114.0.81])
        by smtp.gmail.com with ESMTPSA id t16sm1356208wmi.18.2020.10.06.23.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 23:53:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
To:     Florian Weimer <fweimer@redhat.com>,
        Paul Eggert <eggert@cs.ucla.edu>
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
 <20201001163443.106933-2-colomar.6.4.3@gmail.com>
 <87eemg97ew.fsf@oldenburg2.str.redhat.com>
 <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
 <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
 <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
 <87y2kl403t.fsf@oldenburg2.str.redhat.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <00af348c-83f7-fa3d-8335-09ad9c8b76d5@gmail.com>
Date:   Wed, 7 Oct 2020 08:53:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87y2kl403t.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Florian,

On 10/5/20 9:12 AM, Florian Weimer wrote:
> * Paul Eggert:
> 
>> On 10/2/20 12:01 PM, Alejandro Colomar wrote:
>>> If you propose not to document the stdint types either,
>>
>> This is not a stdint.h issue. __int128 is not in stdint.h and is not a
>> system data type in any real sense; it's purely a compiler
>> issue. Besides, do we start repeating the GCC manual too, while we're
>> at it? At some point we need to restrain ourselves and stay within the
>> scope of the man pages.
> 
> The manual pages also duplicate the glibc manual, and as far as I know,
> it's what programmers actually read.  (Downstream, we receive many more
> man-pages bugs than glibc or GCC manual bugs.)  Most developers use
> distributions 

I presume by most you mean "Debian + Ubuntu"? (The certainly
reflects what I see.)

> which do not ship the glibc or GCC manual for licensing
> policy reasons, so the GNU manuals are not installed locally.

I hadn't quite clicked to this point. So, Debian (and thus
Ubuntu) do not ship the glibc manual because of GNU FDL. That's 
unfortunate. (Many years ago, IIRC, there were still one of
two GNU FDL licensed pages in man-pages, and I rewrote / removed
the pages to eliminate the problem for Debian--and I was happy also
at the same time to reduce the number of licenses in man-pages.)

>> PS. Have you ever tried to use __int128 in real code? I have, to my
>> regret. It's a portability and bug minefield and should not be used
>> unless you really know what you're doing, which most people do not.
> 
> Doesn't this suggest we need improved documentation?

Well, yes. But I'm also not convinced man-pages is the right
place for it.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
