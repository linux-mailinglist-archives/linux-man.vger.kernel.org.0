Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 96A9DCFC5E
	for <lists+linux-man@lfdr.de>; Tue,  8 Oct 2019 16:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725908AbfJHO1b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Oct 2019 10:27:31 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54489 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725900AbfJHO1b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Oct 2019 10:27:31 -0400
Received: by mail-wm1-f67.google.com with SMTP id p7so3391204wmp.4;
        Tue, 08 Oct 2019 07:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CL2CjFqr/gvx4UlhjNVujT9/noY+ERwIiRCikO9IMQY=;
        b=LEeiApTaiq7CfDNq5uCLKajW+ZEy2fWSgKnxKJ9Lg752aMUR8cQhi9xUgKy1FIrJra
         Sa/Adp/MiQIG9W8YCUrWGbinyiwzKl4V9RZbPCSic6tZ6zFv55oiwyWxkrr7aoO2lBvk
         Molo2zpKRcfJs/0AwXi7McLziq233XCJbYTrexhJNrnQjtZwUDyvBlCdJJ8XzIbwPnf4
         sjEXS9LAb/B44GvsdOdDGEuGzDT+s+ONWzW/b9QASEcClhKjuti2eg/5XZKPYJmKK/JZ
         MYpF0mOTZrLgFV7nDApB4gQwK3ESRHYgFC8nzkR8Hd+bZPT2TxxcKRk1T9GQUtaaFvP5
         Caaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CL2CjFqr/gvx4UlhjNVujT9/noY+ERwIiRCikO9IMQY=;
        b=XjbHWm0WfJ4t/faicGEyH6wDI3mI8T2VPhhkHqum9E8865J9uOGh1BQFZvjQPQoi0D
         XdFGQHuWHKTx8IdAmP/qFly0JYKelebzrJbjeKxUiDHN7UeUEw8Kt5MBOo0DWUluB4Xu
         MWI3cKJZMPfs4kClIAgOvivb4V4CW5iyVx7NDCqabHK0gcXtnGheqHEihFkS3DKQwi4K
         K3mol0+LzhhmyiHi+fo/FzZ91aCKVIzmdSfAymukvLKvMzLn6tukHY3PnypkHh++Pgh/
         DbVno9FRbpcjrBsIqdyvq05FQaEe7+RwWpzVVSZ1MtdNkScngTMbRgT1gYKdBtQQfal4
         hFSw==
X-Gm-Message-State: APjAAAWEpmbuTlyL0jd/oHlPkRzOd8QdZ4CBslgRNwG+HId8cTk1Ocrg
        IFf3Cclr+1WxxOSoJDAYm7a5Jf8p
X-Google-Smtp-Source: APXvYqwuwmMmSFL5Shm5tAx7yjvMTFKADXBaHLGWBHrHcBLifllEkCr0OcX7qpOWrWct1Ybyc4d/AQ==
X-Received: by 2002:a1c:7c16:: with SMTP id x22mr4379378wmc.113.1570544847653;
        Tue, 08 Oct 2019 07:27:27 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id m16sm2898141wml.11.2019.10.08.07.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 07:27:26 -0700 (PDT)
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
 <71cad40b-0f9f-24de-b650-8bc4fce78fa8@gmail.com>
 <87y2y6j9i1.fsf@x220.int.ebiederm.org>
 <7e4b23df-ab83-3d5a-3dc5-54025e3682cf@gmail.com>
 <87k19geey0.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <c7041c6a-a4c6-75f2-5380-4fed67cd60b1@gmail.com>
Date:   Tue, 8 Oct 2019 16:27:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87k19geey0.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

>>> Creating of a mount namespace in a user namespace automatically does
>>> 'mount("", "/", MS_SLAVE | MS_REC, NULL);' if the starting mount
>>> namespace was not created in that user namespace.  AKA creating
>>> a mount namespace in a user namespace does the unshare for you.
>>
>> Oh -- I had forgotten that detail. But it is documented
>> (by you, I think) in mount_namespaces(7):
>>
>>        *  A  mount  namespace  has  an  owner user namespace.  A
>>           mount namespace whose owner user namespace is  differ‐
>>           ent  from the owner user namespace of its parent mount
>>           namespace is considered a less privileged mount names‐
>>           pace.
>>
>>        *  When  creating  a  less  privileged  mount  namespace,
>>           shared mounts are reduced to  slave  mounts.   (Shared
>>           and  slave  mounts are discussed below.)  This ensures
>>           that  mappings  performed  in  less  privileged  mount
>>           namespaces will not propagate to more privileged mount
>>           namespaces.
>>
>> There's one point that description that troubles me. There is a
>> reference to "parent mount namespace", but as I understand things
>> there is no parental relationship among mount namespaces instances
>> (or am I wrong?). Should that wording not be rather something
>> like "the mount namespace of the process that created this mount
>> namespace"?
> 
> How about "the mount namespace this mount namespace started as a copy of"
> 
> You are absolutely correct there is no relationship between mount
> namespaces.  There is just the propagation tree between mounts.  (Which
> acts similarly to a parent/child relationship but is not at all the same
> thing).

Thanks. I made the text as follows:

       *  Each  mount  namespace  has  an owner user namespace.  As noted
          above, when a new mount namespace is  created,  it  inherits  a
          copy  of  the  mount  points  from  the  mount namespace of the
          process that created the new mount namespace.  If the two mount
          namespaces are owned by different user namespaces, then the new
          mount namespace is considered less privileged.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
