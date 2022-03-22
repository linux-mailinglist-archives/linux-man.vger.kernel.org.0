Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C884D4E3DC9
	for <lists+linux-man@lfdr.de>; Tue, 22 Mar 2022 12:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233542AbiCVLp7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Mar 2022 07:45:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231818AbiCVLp7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Mar 2022 07:45:59 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 995B43A1A2
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 04:44:31 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id bi13-20020a05600c3d8d00b0038c2c33d8f3so1843018wmb.4
        for <linux-man@vger.kernel.org>; Tue, 22 Mar 2022 04:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=1pNAMBhh+dH25VuGB4Za302MYZYdmJkuysBp0QQ/UmI=;
        b=dm6xWnNYvneyOJMQWNu3/Yr5YXkCmQA7eW4VO6c5TrxmkQLD2vXlop7kUPdd8PCnor
         sYe6/Ur0QCN71iP4YlJoE6pvA/SFSW4uaP9hPERSGVhGzcXea9cbqWrv86DghdPZ+VIe
         uJL6gWnuserBb5EicEbZnQocvO6n2qRBe33+FkZEAd1hBYoGkyiE7DoP2Z0I9cqhBtG3
         5ib1OVhSrnfDufJC0JcnRNmMQnBbtYoERTVgSXIVN5iogO44TRstGK6rJx4eG2CHshS7
         rQRHKohrW4enL/fc5zbMTIN/aF50CT3d+BYbNC4AqNon/vHIuGv16t66pqxqh1Q+13oa
         lM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1pNAMBhh+dH25VuGB4Za302MYZYdmJkuysBp0QQ/UmI=;
        b=akZTr0UBRVBJpsI48LORApymgKLHJqikScmoeRuw/NyHs+m3bjrjCtSkgElSJUWpEQ
         mLjdKMzeYLwySYqoTyyK5XnIAZ62fkx8eR1OPyzV7krWFJPpOkcJ6+7m+kynVcupEqCr
         V0s5WNkFbmQr9AXP90ilvORUHQ9dpgKhAnXuZqgBIe393rZshdBPmEOQvJF9coMuKKgN
         a1NwkhnSqV9NqZN5lcYeKfOmHjMz36wQpO7zGjA7tbpFLIqWYtGmrpijFSAUPZ6F+1I8
         lceq7fHx3BfXP80IEBCDrk39RKAPiUqRk24SwPhXFjmf3fON0PHwQptwh9DuW+n3kScS
         X9DQ==
X-Gm-Message-State: AOAM530XfoBmjPejEuMOifEgKLWypPksD1g5eSNL+nawMaxCLJpyV32n
        q+8KEUd3n6DQ/XlYs0x6eXU=
X-Google-Smtp-Source: ABdhPJxePF5tNZ6ZmUh/BO35BuQxtDDjx1tlqcw54EGMiBn4+lnD5KSEoBAzmnvfuarfN69l2tgkWw==
X-Received: by 2002:a5d:5046:0:b0:1ed:9eac:bade with SMTP id h6-20020a5d5046000000b001ed9eacbademr21857301wrt.697.1647949470081;
        Tue, 22 Mar 2022 04:44:30 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c4f5400b0038b5162260csm2968253wmq.23.2022.03.22.04.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Mar 2022 04:44:29 -0700 (PDT)
Message-ID: <a3a53704-84fe-7fc8-55d4-46094dc38ef2@gmail.com>
Date:   Tue, 22 Mar 2022 12:44:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: Man-pages Git repository
Content-Language: en-US
To:     Christian Aistleitner <christian@quelltextlich.at>
Cc:     Mike Frysinger <vapier@gentoo.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        John Marshall <John.W.Marshall@glasgow.ac.uk>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
 <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com> <YjjquYSCEnlFr0PJ@vapier>
 <408859e3-dbf2-09a8-e404-210f4280d90b@gmail.com>
 <20220322094950.GA3775@quelltextlich.at>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220322094950.GA3775@quelltextlich.at>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Christian,

On 3/22/22 10:49, Christian Aistleitner wrote:
> Hi Alejandro,
> 
> On Mon, Mar 21, 2022 at 11:55:55PM +0100, Alejandro Colomar (man-pages) wrote:
>> [...]
>> but rather that if someone wants the latest development pages
>> one can search my private repo,
> 
> When preparing a patch a few days ago, I ran into the same situation
> as OP, and I failed to find your private repo.
> 
> I did manage to find https://github.com/mkerrisk/man-pages but that
> seemed to lag as well, when comparing to the patches marked as merged
> on the mailing list. (Just as other forks on GitHub did)
> 
> While I also think that it would be nice to have the canonical repo
> updated, I can of course also see the isseus of getting push access to
> kernel.org.
> 
> So as a kind of stop-gap mitigation (?), I've set up
> https://github.com/somechris/man-pages
> 
> It's a read-only clone of your repo.
> This clone gets updated hourly from your private repo.
> The description holds a reference to your repo and this thread.
> And since it's on GitHub it'll hopefully help get picked up by search
> engines and help to better expose the freshly merged commits from your
> repo, and help people to create patches against your up-to-date repo.

Thank you very much :)

I already had a github man-pages repo[1],
but don't like github policies very much[2],
and in general, I don't trust big corporations to keep my stuff,
so I decided to remove all of my personal repos from github[3],
and I kept the man-pages one just to help contributors.


[1]: <https://github.com/alejandro-colomar/man-pages>

[2]: <https://twitter.com/sgomez/status/1480148595059965956>

[3]: Incidentally, just a day before [2] happened,
      I removed all of my personal repos from github.
      Quite a coincidence.

> 
> Have fun,
> Christian
> 
> 
> P.S.: If you think that yet-another-linux-man-pages-repo-on-GitHub is
> counter-productive or you object to have your server queried for new
> commits every hour, please let me know and I'll tear that repo down
> again.

a) Not really, and that's your decision.  But if you ask me, if I have 
to choose between (too) many forks/mirrors, or just a single source of 
truth, I prefer many.  When things go wrong, mirrors/forks save the world.

b) Nah, I don't mind that kind of traffic.  Go ahead.  What I don't 
promise is that my server will respond always; I may turn it off for 
maintenance without notice.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
