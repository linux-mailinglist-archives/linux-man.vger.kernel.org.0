Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE1A5CDFCB
	for <lists+linux-man@lfdr.de>; Mon,  7 Oct 2019 13:02:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727717AbfJGLCU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Oct 2019 07:02:20 -0400
Received: from mail-wr1-f50.google.com ([209.85.221.50]:45050 "EHLO
        mail-wr1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727317AbfJGLCT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Oct 2019 07:02:19 -0400
Received: by mail-wr1-f50.google.com with SMTP id z9so14689582wrl.11;
        Mon, 07 Oct 2019 04:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K0kokyTsB3Y6KLcBtG6c0Xnn36u8n0fcpwvMZWOfYIQ=;
        b=bQKJbXT6hg8k8t2mo5nZgHtql2CQm2ImlGJTcMVwxZG7yK2PS9igl825G4xKRtNPiU
         OKazjVRpnTSucq4komCXJOr1DUw1bV82Yxd6VGswAlRE8tYuDhm2xH+7DNfv9zTh+vI9
         g/X1V40xVQi07VoYBG+fI/TAWCh8cvmnJ+OxsnlsE1PGFbnuu7FCT/2bvLBhtQssKGHZ
         ALmVYO8JSVndSip9D0Av94srPbcv1Il4InPEVBJB/NjDoQGvNGSGu+fv7XM/N5T8nk8x
         iXwslNqgbfResdjgifM6jLOmyuX2z4HGQOjy5CItGk/VmX5ZKuT4wljhFEujNy9qu2Mv
         8Cmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K0kokyTsB3Y6KLcBtG6c0Xnn36u8n0fcpwvMZWOfYIQ=;
        b=hKvw19yXox/ZP9FqgJXCyjQFOfKnUJ+0ojKxTntrqEr3pyB6X2rKhwWQP1yQQ0QH8p
         NvH54nXHpq9/VpcgAFYXA0acg5ZAuVn8W7n3BEkuR89TMmZTFloqlT5bSDrKxbNqwVjZ
         4l8saz+/PaY320OB9ezcFp4jlpqaCsfH1MReBanTA08imu0GnCBxaMu4KzAJDENR9fB9
         aA6iGDGDjEHK67ciowp9S5qp5jXIU3QZK5ndVR+Y7anqUHsoeIlZ/1y72yUYvEs4bHuZ
         o6ZtlRLmstWW5aBylA733NEyDV1Ztp1RqOGadEff1Cp8qxIpcf1oe0Vr9oyyuQRJ0E4L
         k+9g==
X-Gm-Message-State: APjAAAWBRs017rxvmd8+9eLBDK+a2pZOh3TeGGbxPe8D2tBhqfn86KxB
        35rkTDTXjUVZ3k9+yv3Y6V+1VOnAqI8=
X-Google-Smtp-Source: APXvYqw0e4VgByGGyf8R3h1Vk95Ws/7a7/DoROiiW7/UWvyBsBBxFEcZajI+ZDgFjZrFmHBCaUOmbQ==
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr20040877wrw.24.1570446135818;
        Mon, 07 Oct 2019 04:02:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:3a5c:9a01:3824:4ac7:72b1:81a? ([2001:a61:3a5c:9a01:3824:4ac7:72b1:81a])
        by smtp.gmail.com with ESMTPSA id d4sm18397308wrq.22.2019.10.07.04.02.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 04:02:14 -0700 (PDT)
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7e4b23df-ab83-3d5a-3dc5-54025e3682cf@gmail.com>
Date:   Mon, 7 Oct 2019 14:02:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <87y2y6j9i1.fsf@x220.int.ebiederm.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On 9/30/19 2:42 PM, Eric W. Biederman wrote:
> "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:
> 
>> Hello Eric,
>>
>> A ping on my question below. Could you take a look please?
>>
>> Thanks,
>>
>> Michael
>>
>>>>>> The concern from our conversation at the container mini-summit was that
>>>>>> there is a pathology if in your initial mount namespace all of the
>>>>>> mounts are marked MS_SHARED like systemd does (and is almost necessary
>>>>>> if you are going to use mount propagation), that if new_root itself
>>>>>> is MS_SHARED then unmounting the old_root could propagate.
>>>>>>
>>>>>> So I believe the desired sequence is:
>>>>>>
>>>>>>>>>             chdir(new_root);
>>>>>> +++            mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>>>>>>>             pivot_root(".", ".");
>>>>>>>>>             umount2(".", MNT_DETACH);
>>>>>>
>>>>>> The change to new new_root could be either MS_SLAVE or MS_PRIVATE.  So
>>>>>> long as it is not MS_SHARED the mount won't propagate back to the
>>>>>> parent mount namespace.
>>>>>
>>>>> Thanks. I made that change.
>>>>
>>>> For what it is worth.  The sequence above without the change in mount
>>>> attributes will fail if it is necessary to change the mount attributes
>>>> as "." is both put_old as well as new_root.
>>>>
>>>> When I initially suggested the change I saw "." was new_root and forgot
>>>> "." was also put_old.  So I thought there was a silent danger without
>>>> that sequence.
>>>
>>> So, now I am a little confused by the comments you added here. Do you
>>> now mean that the
>>>
>>> mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>
>>> call is not actually necessary?
> 
> Apologies for being slow getting back to you.

NP. Thanks for your reply.

> To my knowledge there are two cases where pivot_root is used.
> - In the initial mount namespace from a ramdisk when mounting root.
>    This is the original use case and somewhat historical as rootfs
>    (aka an initial ramfs) may not be unmounted.
> 
> - When setting up a new mount namespace to jettison all of the mounts
>    you don't need.
> 
> The sequence:
> 
> 	chdir(new_root);
>          pivot_root(".", ".");
>          umount2(".", MNT_DETACH);
> 
> is perfect for both use cases (as nothing needs to be known about the
> directory layout of the new root filesystem).
> 
> In the case when you are setting up a new mount namespace propogating
> changes in the mount layout to another mount namespace is fatal.  But
> that is not a concern for using that pivot_root sequence above because
> pivot_root will fail deterministically if
> 'mount("", ".", MS_SLAVE | MS_REC, NULL)' is needed but not specified.
> 
> So I would document the above sequence of three system calls in the
> man-page.

Okay. I've changed the example to be just those three calls.

> I would document that pivot_root will fail if propagation would occur.

Yep. That's in the page already.

> I would document in pivot_root or under unshare(CLONE_NEWNS) that if
> mount propagation is enabled (the default with systemd) that you
> need to call 'mount("", "/", MS_SLAVE | MS_REC, NULL);' or
> 'mount("", "/", MS_PRIVATE | MS_REC, NULL);' after creating a mount
> namespace.  Or mounts will propagate backwards, which is usually
> not what people want.

Thanks. Instead, I have added the following text to
mount_namespaces(7), the page that is referred to by both clone(2) and 
unshare(2) in their discussions of CLONE_NEWNS:

        An   application  that  creates  a  new  mount  namespace
        directly using clone(2) or unshare(2) may desire to  pre‐
        vent  propagation  of  mount events to other mount names‐
        paces (as is is done by unshare(1)).  This can be done by
        changing  the propagation type of mount points in the new
        namesapace to either MS_SLAVE  or  MS_PRIVATE.   using  a
        call such as the following:

                   mount(NULL, "/", MS_SLAVE | MS_REC, NULL);

> Creating of a mount namespace in a user namespace automatically does
> 'mount("", "/", MS_SLAVE | MS_REC, NULL);' if the starting mount
> namespace was not created in that user namespace.  AKA creating
> a mount namespace in a user namespace does the unshare for you.

Oh -- I had forgotten that detail. But it is documented
(by you, I think) in mount_namespaces(7):

        *  A  mount  namespace  has  an  owner user namespace.  A
           mount namespace whose owner user namespace is  differ‐
           ent  from the owner user namespace of its parent mount
           namespace is considered a less privileged mount names‐
           pace.

        *  When  creating  a  less  privileged  mount  namespace,
           shared mounts are reduced to  slave  mounts.   (Shared
           and  slave  mounts are discussed below.)  This ensures
           that  mappings  performed  in  less  privileged  mount
           namespaces will not propagate to more privileged mount
           namespaces.

There's one point that description that troubles me. There is a
reference to "parent mount namespace", but as I understand things
there is no parental relationship among mount namespaces instances
(or am I wrong?). Should that wording not be rather something
like "the mount namespace of the process that created this mount
namespace"?

Thanks,

Michael


