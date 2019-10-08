Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9F6D02F5
	for <lists+linux-man@lfdr.de>; Tue,  8 Oct 2019 23:40:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729841AbfJHVkd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Oct 2019 17:40:33 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54287 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728054AbfJHVkc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Oct 2019 17:40:32 -0400
Received: by mail-wm1-f65.google.com with SMTP id p7so4751496wmp.4;
        Tue, 08 Oct 2019 14:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KQzohJCG61pBThkqHacGwlln25PYM/Z2CzNo61kl+64=;
        b=LAwwj7aC6u8yGJbIPbnL7HbAZrDm/xyiHD5Jjc1euTOjQ4xbXAjzujFkfSgGUvAgIr
         HIvMpzzJsL29HbxwzRKbRMU9LP/iArjH0oFsNqQhT5WSxvLI2Jq3g3ezGr7OLkVGW+F2
         UDdeW6JYiSAfk3hc9HK8SNW2Bq71MK7GqL5NntLrLInYM/h6LLEMQicViD3bUCTFH9M4
         wufvW2UPgBlqEo8a5AGTe7oUhgIf85bvo7VkDP5f5giR+Z16GqZmdqx/XSVojKO3wZrW
         MTh0nJ5iuLhFEZrdLN0hqx5TgKK2s3v6t25Ms7MdyX7DdY6/mN6lE8ntLAKYgQPlHQMX
         J3CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KQzohJCG61pBThkqHacGwlln25PYM/Z2CzNo61kl+64=;
        b=GcE16Jp7UmVNvJfY650eJqcTt2zbHpqGHE8zLCbRla75TwQrEUeemTDjtx7WUNNpqs
         ZmYhL9zwAqhKxA/ud8uGcvwWeczCzsvQrTqHo8rTgmEZrhXpccTFXRow3XDT7kLA+f7+
         F76MCr7kkmGUzMs96q0ZwbDi59sVdDja5lMgUImZFTSKToGsnRM9DV3WMdgVxtQoBygv
         to1CgoZ/CQh3I6pEnPZCFmqOcKhK7z3uVJ6OvlBQcv9/kyhCoRvJhtLzFhxXFSieJCfL
         RZgBg92RvjBIzAfzuU1UWhLrTLtKaLJYvWgIoRuAP8kbAch9CixXb6DomYYsdFYJQA4z
         a2Aw==
X-Gm-Message-State: APjAAAU6oC+gxAl2v/v70NNnfxKSTVBxCmbzdpDlN/FnMUCc8INpr49O
        z6pKWLQlmZlVmV8jqDJyQ2Q=
X-Google-Smtp-Source: APXvYqzXGq/ii3gvCqc0wnjvUuskOoDrrXeHDsK9dpZ0tH8RadBZmcbnB4dReeO+cG+sqCZnAwwb/g==
X-Received: by 2002:a1c:e086:: with SMTP id x128mr150542wmg.139.1570570830293;
        Tue, 08 Oct 2019 14:40:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a5c:9a01:fb47:94a9:abbd:4835? ([2001:a61:3a5c:9a01:fb47:94a9:abbd:4835])
        by smtp.gmail.com with ESMTPSA id c6sm47314wrm.71.2019.10.08.14.40.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 14:40:28 -0700 (PDT)
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
 <c7041c6a-a4c6-75f2-5380-4fed67cd60b1@gmail.com>
 <87eeznc9fc.fsf@x220.int.ebiederm.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <08d2b28b-21cc-e304-f624-bb5bc4ee98f4@gmail.com>
Date:   Tue, 8 Oct 2019 23:40:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <87eeznc9fc.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/8/19 9:40 PM, Eric W. Biederman wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> Hello Eric,
>>
>>>>> Creating of a mount namespace in a user namespace automatically does
>>>>> 'mount("", "/", MS_SLAVE | MS_REC, NULL);' if the starting mount
>>>>> namespace was not created in that user namespace.  AKA creating
>>>>> a mount namespace in a user namespace does the unshare for you.
>>>>
>>>> Oh -- I had forgotten that detail. But it is documented
>>>> (by you, I think) in mount_namespaces(7):
>>>>
>>>>        *  A  mount  namespace  has  an  owner user namespace.  A
>>>>           mount namespace whose owner user namespace is  differ‐
>>>>           ent  from the owner user namespace of its parent mount
>>>>           namespace is considered a less privileged mount names‐
>>>>           pace.
>>>>
>>>>        *  When  creating  a  less  privileged  mount  namespace,
>>>>           shared mounts are reduced to  slave  mounts.   (Shared
>>>>           and  slave  mounts are discussed below.)  This ensures
>>>>           that  mappings  performed  in  less  privileged  mount
>>>>           namespaces will not propagate to more privileged mount
>>>>           namespaces.
>>>>
>>>> There's one point that description that troubles me. There is a
>>>> reference to "parent mount namespace", but as I understand things
>>>> there is no parental relationship among mount namespaces instances
>>>> (or am I wrong?). Should that wording not be rather something
>>>> like "the mount namespace of the process that created this mount
>>>> namespace"?
>>>
>>> How about "the mount namespace this mount namespace started as a copy of"
>>>
>>> You are absolutely correct there is no relationship between mount
>>> namespaces.  There is just the propagation tree between mounts.  (Which
>>> acts similarly to a parent/child relationship but is not at all the same
>>> thing).
>>
>> Thanks. I made the text as follows:
>>
>>        *  Each  mount  namespace  has  an owner user namespace.  As noted
>>           above, when a new mount namespace is  created,  it  inherits  a
>>           copy  of  the  mount  points  from  the  mount namespace of the
>>           process that created the new mount namespace.  If the two mount
>>           namespaces are owned by different user namespaces, then the new
>>           mount namespace is considered less privileged.
> 
> I hate to nitpick, 

I love it when you nitpick. Thanks for your attention to the details 
of my wording.

> but I am going to say that when I read the text above
> the phrase "mount namespace of the process that created the new mount
> namespace" feels wrong.
> 
> Either you use unshare(2) and the mount namespace of the process that
> created the mount namespace changes.
> 
> Or you use clone(2) and you could argue it is the new child that created
> the mount namespace.
> 
> Having a different mount namespace at the end of the creation operation
> feels like it makes your phrase confusing about what the starting
> mount namespace is.  I hate to use references that are ambiguous when
> things are changing.
>
> I agree that the term parent is also wrong.

I see what you mean. My wording is imprecise.

So, I tweaked text earlier in the page so that it now reads
as follows:

       A  new  mount  namespace  is  created  using  either  clone(2)  or
       unshare(2) with the CLONE_NEWNS flag.  When a new mount  namespace
       is created, its mount point list is initialized as follows:

       *  If  the  namespace  is  created using clone(2), the mount point
          list of the child's namespace is a copy of the mount point list
          in the parent's namespace.

       *  If  the  namespace is created using unshare(2), the mount point
          list of the new namespace is a copy of the mount point list  in
          the caller's previous mount namespace.

And then I tweaked the text that we are currently discussing to read:

       *  Each mount namespace has an owner user namespace.  As explained
          above,  when  a new mount namespace is created, its mount point
          list is initialized as a  copy  of  the  mount  point  list  of
          another  mount namespace.  If the new namespaces and the names‐
          pace from which the mount point list was copied  are  owned  by
          different user namespaces, then the new mount namespace is con‐
          sidered less privileged.

How does this look to you now?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
