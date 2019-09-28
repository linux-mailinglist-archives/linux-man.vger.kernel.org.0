Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B27EAC111E
	for <lists+linux-man@lfdr.de>; Sat, 28 Sep 2019 17:05:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725965AbfI1PFd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Sep 2019 11:05:33 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:37214 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbfI1PFd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Sep 2019 11:05:33 -0400
Received: by mail-wr1-f68.google.com with SMTP id i1so6253782wro.4;
        Sat, 28 Sep 2019 08:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=r5btYe583WbPnImhcgeJ0qi2pxEd3RParWXVD2UqrQs=;
        b=vWUmqXJgTwhj+v/R+jwW2Db9/tPVKPHoBnbE/OT99WSQFQNM77KQ8C+lDtnmiMG/Cg
         NDKehlIZ3CJ/UL9740j+iH9pV3TPnMxJ2mMazqVilMO+ZlGzLulZ0muSxt4QCHAfHkwU
         DyaPrWxf3Fg+W4DlH04oSpfOo3tPqNZRMNqHNw3opL8tHwGO57S0voqvtMcE+o/btXsL
         IpsgPJAIW3yfWD/4QYmc7zeiirB5pBkGKbvh4aWZv7da7OtvbsHyXK6dOB06NAua8Pf5
         CjZY0M4q+eL6SFTITkRpFXvNgwVsUW8/aPBMt0m5k20oZn/2+/iqSqShGl5WXweFFh9D
         aIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=r5btYe583WbPnImhcgeJ0qi2pxEd3RParWXVD2UqrQs=;
        b=hzwHqwyLFcM4dCZr9mY3agkXM5NEMxlEytgIwyfPKPIvzkcqcQ2XncfkmIH/FDwYBK
         fwY7yE+sFnOhCsLpPFOMViGkea8F2I7iPpfQhrvIneIKSXHqC6fG7Ufv3bzq04eLAZlv
         I/lhKSA+6jk26RXmkGksLy139wvrdvES0FzuYe4w8S34Y7B7qFRJTBEp7nX6a/JM+mU6
         uIa6JgAToDN5u/xcac5lOrozZXh6UZoaLFOVPavwG3InCmgg4nhgZ5fUALkNWzjEo07Z
         zbCoAOnEazjz3Ek77UppuZmUYwoHUzXqR1PggYmQAQE2zMhHqDprvRt2hDhjL0zJIcxm
         L47g==
X-Gm-Message-State: APjAAAX5A9eJPdpXVf07Dpkm1sZPbAhV46v+GzIt+RurcSYRS4hKks8B
        AHIT1eL4FWV4Gm2+kVdHI08=
X-Google-Smtp-Source: APXvYqyJU/ZIMRu6k39G2cRjjRIgMvVf6h6Vw/cKlTYjsHZhMUTqC4O5DECAOiYyNg5FmXHrJewf2Q==
X-Received: by 2002:adf:e988:: with SMTP id h8mr6836693wrm.354.1569683131250;
        Sat, 28 Sep 2019 08:05:31 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id f143sm22561378wme.40.2019.09.28.08.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Sep 2019 08:05:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        Christian Brauner <christian.brauner@ubuntu.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
Subject: Re: pivot_root(".", ".") and the fchdir() dance
To:     "Eric W. Biederman" <ebiederm@xmission.com>
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
 <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com>
 <871rwnda47.fsf@x220.int.ebiederm.org>
 <448138b8-0d0c-5eb3-d5e5-04a26912d3a8@gmail.com>
 <87ef0hbezt.fsf@x220.int.ebiederm.org>
 <cc21557f-1568-68c3-e322-47ceb52fdf53@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <71cad40b-0f9f-24de-b650-8bc4fce78fa8@gmail.com>
Date:   Sat, 28 Sep 2019 17:05:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cc21557f-1568-68c3-e322-47ceb52fdf53@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

A ping on my question below. Could you take a look please?

Thanks,

Michael

>>>> The concern from our conversation at the container mini-summit was that
>>>> there is a pathology if in your initial mount namespace all of the
>>>> mounts are marked MS_SHARED like systemd does (and is almost necessary
>>>> if you are going to use mount propagation), that if new_root itself
>>>> is MS_SHARED then unmounting the old_root could propagate.
>>>>
>>>> So I believe the desired sequence is:
>>>>
>>>>>>>            chdir(new_root);
>>>> +++            mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>>>>>            pivot_root(".", ".");
>>>>>>>            umount2(".", MNT_DETACH);
>>>>
>>>> The change to new new_root could be either MS_SLAVE or MS_PRIVATE.  So
>>>> long as it is not MS_SHARED the mount won't propagate back to the
>>>> parent mount namespace.
>>>
>>> Thanks. I made that change.
>>
>> For what it is worth.  The sequence above without the change in mount
>> attributes will fail if it is necessary to change the mount attributes
>> as "." is both put_old as well as new_root.
>>
>> When I initially suggested the change I saw "." was new_root and forgot
>> "." was also put_old.  So I thought there was a silent danger without
>> that sequence.
> 
> So, now I am a little confused by the comments you added here. Do you
> now mean that the 
> 
> mount("", ".", MS_SLAVE | MS_REC, NULL);
> 
> call is not actually necessary?
> 
> Thanks,
> 
> Michael
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
