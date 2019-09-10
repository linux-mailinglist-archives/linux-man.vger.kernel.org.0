Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64C15AE904
	for <lists+linux-man@lfdr.de>; Tue, 10 Sep 2019 13:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725942AbfIJLVU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Sep 2019 07:21:20 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:38324 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725935AbfIJLVU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Sep 2019 07:21:20 -0400
Received: by mail-wr1-f65.google.com with SMTP id l11so19386016wrx.5;
        Tue, 10 Sep 2019 04:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MrINUQGFA0l/We/Wa3iq30ErdoQdRnCKtSaB6+ShjIs=;
        b=pCbEc1/3duUPc3UmWObiepmEmkhTJnfZVi4z+Xe+ogQts1oMtlAoovAaM6O7DYSERu
         AgsPRmm4Quo9JT5jbNNV0UCDcyLBcCT74XIu5w3AqSUKEZS1cY1Y0vuY/D7+mt7/q/Vy
         3RSldqlXTMn0KA6H6c3DgSdcLc0hjOJVLs2kaNWTkyZgPusYKRIkPdVc4CXS2pFZ6G09
         s0mQ/y93jFrcvcdIbA1yLtW5QaWnb3vNFzaM4estMADY1H9J6i8zIvulh8CZe4HVJdI2
         6fXoM5oa8V196gnq9ungBEuWevk2wj70tFOKjj0f9Vtfd+yiz+VvRX9waKZ38dlef9lO
         EIAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MrINUQGFA0l/We/Wa3iq30ErdoQdRnCKtSaB6+ShjIs=;
        b=Pfxk8bGMyum+wNV7lGzELuAtSHExBVA24Tz68uSjHAsDfccUfgSD8jyN5qO6NMjuyj
         8vIhiFUpPXF5RtaNcUhgV2h3rWVW04y+THA8WS+qE9KNREV/KyRyqDVoBEwI7tASI3dx
         H1WTCWFz2Aev3gV9POaqgdPGQnJ20GgqVfNrGzOOEUYPfA0cNefkLndeDHPeBy6B/QEA
         OBbnIydmxSBlnq2Anubvy17iuwl/62JrlEDNmx6MGNYQ2gJXnbkllpYA/XgNVWnXQah3
         XjTvHRm9cpYrwCjfoRQRrhsJV5/7AVH0D5z0sel1jlMaOEvlqEx3Pne+wuoo4zXUa/3P
         FAhQ==
X-Gm-Message-State: APjAAAVD5VMlUrP4VHQtQqW5X5N/Po/1qNfMhPWJ2F4biLlHXv+nx7DK
        1u6OqXk83CEKbB+z978JZf8=
X-Google-Smtp-Source: APXvYqwLfBEPvG1wXLHzROYBheQl0cRFh0Tje0PdacQ2uxMjVudppEWJMMEunseQr0OH9qQGWveswQ==
X-Received: by 2002:a5d:6602:: with SMTP id n2mr26965864wru.317.1568114477454;
        Tue, 10 Sep 2019 04:21:17 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id s3sm1871301wmj.48.2019.09.10.04.21.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 04:21:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     Christian Brauner <christian.brauner@ubuntu.com>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
 <20190805103630.tu4kytsbi5evfrhi@mikami>
 <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
 <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
 <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
 <87r24piwhm.fsf@x220.int.ebiederm.org>
 <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
 <87ftl5donm.fsf@x220.int.ebiederm.org>
 <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
 <20190910111551.scam5payogqqvlri@wittgenstein>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com>
Date:   Tue, 10 Sep 2019 13:21:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190910111551.scam5payogqqvlri@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Christian,

>> All: I plan to add the following text to the manual page:
>>
>>        new_root and put_old may be the same  directory.   In  particular,
>>        the following sequence allows a pivot-root operation without need‐
>>        ing to create and remove a temporary directory:
>>
>>            chdir(new_root);
>>            pivot_root(".", ".");
>>            umount2(".", MNT_DETACH);
> 
> Hm, should we mention that MS_PRIVATE or MS_SLAVE is usually needed
> before the umount2()? Especially for the container case... I think we
> discussed this briefly yesterday in person.
Thanks for noticing. That detail (more precisely: not MS_SHARED) is
already covered in the numerous other changes that I have pending
for this page:

       The following restrictions apply:
       ...
       -  The propagation type of new_root and its parent mount must  not
          be MS_SHARED; similarly, if put_old is an existing mount point,
          its propagation type must not be MS_SHARED.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
