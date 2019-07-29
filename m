Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99A7578BC2
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 14:27:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727646AbfG2M1s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 08:27:48 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:33717 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726281AbfG2M1s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 08:27:48 -0400
Received: by mail-wm1-f67.google.com with SMTP id h19so42917137wme.0
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 05:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qQ6T+5R8y4S7bscIjCWPsS44qubdWUwyOnLbaGOQEtg=;
        b=AxZOJdWB82KJ0R2vgSk14aTeuV8Mk2CiWm4ON8hzIQgaE5+ABCTDg+950vl370ta41
         pfiAQCGNfSxb4pQhFC4jJCat7phWGO10oAe8/ZiZOfJOEA37LpT9nqW2p8x/21B0xadJ
         bM014omisQ4egwoJSQeSShrGAV0cHhanDAVqq7Oe6Q8AKJx0YUINnW1lphtIxxVUuqfK
         rjRXrD+fXzkefm388IT9fLwGK8wqM64W0XyS45GYC5sLu1JfifQC/SBEhQkXCVlMOAwm
         NoOIX8qm6ueSX013F41rQe/WdtNAOOurHWKgpHo2HIMLP0ZIkfCWRzUqIEXsYu/eeFsa
         g8hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qQ6T+5R8y4S7bscIjCWPsS44qubdWUwyOnLbaGOQEtg=;
        b=jtUX9v8QMLJy+A++7ZLboMaAqEm9UaZ/gfX9J3TB9Z811y7PsL3Jc+dprK5FZ2G1do
         bn/2VRFShCcaOYrXxJkR7Yr1DtC8OUrOFrKEWtAf376hMVcWxh1jHg6y2B43zELUzLNl
         b8cxmSjCCR6dutzmS9vLwyj26m+40G4/y20mcBGQCniytxL8NqUHDQifIe6ABeG+CEfE
         w3X6mqs04iXw1+pdTRStWBWRffIraWQ0aDiunchcJZ44WoB8upv3wCPodLMDU6kwfWnb
         /HFzdbvoDQB8KTVNo8/O1KvxzXbONzqjTGoQxq7d8eJVteHzf4MC6tTL5nYBIrJ2oXuJ
         MGgA==
X-Gm-Message-State: APjAAAVCexPK9nHoRWxNQERtcbrbDZZ4ywvL4HY6EO8I6VDZsZ+oDiyw
        ysnTgSoRMEex+ECaPfDmHj2eILKA
X-Google-Smtp-Source: APXvYqwKT34QJCOoZzSa5zovTub+dunLbvxhF1f4COvQSBzwYQ7nTUXBIia8bxCqTzDqFP+uApkF3Q==
X-Received: by 2002:a05:600c:2311:: with SMTP id 17mr96471911wmo.18.1564403266234;
        Mon, 29 Jul 2019 05:27:46 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id g17sm46117271wrm.7.2019.07.29.05.27.45
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:27:45 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: manpage bug/improvement: pthread_setschedparam does not need
 privilege to set real-time policy
To:     Chris Fryer <chrisf1874@gmail.com>
References: <29b5f021-cab1-8ac0-c283-6fe8d41408cc@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fd44a5cf-b82b-19eb-ec3c-96ad7b4160b3@gmail.com>
Date:   Mon, 29 Jul 2019 14:27:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <29b5f021-cab1-8ac0-c283-6fe8d41408cc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hello Chris,

On 6/13/18 9:09 AM, Chris Fryer wrote:
> http://man7.org/linux/man-pages/man3/pthread_getschedparam.3.html
> 
> The example section on this page states that a process needs privilege 
> in order to set real-time scheduling policy. If my understanding is 
> correct, this hasn't been necessary since Linux 2.6.12 and the 
> introduction of resource limit RLIMIT_RTPRIO.
> 
> Testing on 4.13.0 shows I can use the example code to set SCHED_FIFO or 
> SCHED_RR without privilege up to an RLIMIT_RTPRIO of 95.

What you say is correct, but there is also this text in the page
that points to another page that describes all of the details:

NOTES
       For a description of the permissions required to, and  the  effect
       of,  changing  a  thread's  scheduling  policy  and  priority, and
       details of the permitted ranges for priorities in each  scheduling
       policy, see sched(7).

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
