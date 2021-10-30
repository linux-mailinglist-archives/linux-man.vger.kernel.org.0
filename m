Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F157440B61
	for <lists+linux-man@lfdr.de>; Sat, 30 Oct 2021 20:59:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229788AbhJ3TBo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 30 Oct 2021 15:01:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbhJ3TBn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 30 Oct 2021 15:01:43 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C645C061570
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 11:59:13 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id s13so14723614wrb.3
        for <linux-man@vger.kernel.org>; Sat, 30 Oct 2021 11:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MnHxoRD1748r4EmknOQhYSdrHP+XplEnGO5js8FgN8k=;
        b=i88Nxl4KTgrAzkrj2GAe46TkT/mYMuRDpRI+45ICtJMrwVoIK6bld7K1LL295EN3w3
         vLsJCHn0P3oEhVHB7vYDMHdfdVnTFfWbeAxe2Y4sI/gYtMF14reTqZE/vFoKSiPXEUau
         +BY/g4VhZPOIaxh5s9zi6QM1LzcH05yIeDVWY2EpbNb2H53h8enL5iFzpixWc5amTzMO
         eHWPwqgQ3yoYY1P6q4/n90QfziMyvnRR/Mk7R+PDTlMdql6/XjRS5WaYADwNO5ZOHf4o
         uF+j11U0t+k5VJFg02NGh8TsLLUMUmXrasXaySeFgrqbYaOKmyXoQjjFTvuaMu+4RpwI
         ImKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MnHxoRD1748r4EmknOQhYSdrHP+XplEnGO5js8FgN8k=;
        b=NYt9BMzcZV4K8drWEaHv2Zr0B5WJJV413rvZY6GUkcWJfp5KKRf+7nTBmT9Wh199Dn
         jdv+nvaXMDCnf7EzbemBa90vggo6MM7UobnNRmOWX2FE+qsOtbVxJN2pt50nZC2/U8/X
         V9O4g7gy88Mwb2MxQkCclqaxvevFgyb7eDVWMDU87A2Z6hWHZOrIWRgkPosV833acr5d
         m4pBscEIkd/gu4rmmMsxy9z4aoFTOxxL2c9dTbqDV0VFD+g2cElCn11QAopU055xdaHT
         EQx2oOSbSREBfo0LORfgGqXZTbexE3V5hwPCZ43xBRJUB7CTERy/Reg+tvO59sg4DqaK
         9cwQ==
X-Gm-Message-State: AOAM532mWaVFN6u2BsnADBzwUpcEjojJOHi0DYDYXOnyeLRcH+YtSWxK
        d6uFsKh3QhpQdqXDlVHSoyT/Xa5Eaig=
X-Google-Smtp-Source: ABdhPJyv7mZkfWyiQv5iJK21gtkOHsSCJrAOiQOJVw6brKoA9nTaHYUjn7SolZaRcth9j5ozr8xBFw==
X-Received: by 2002:a05:6000:15c6:: with SMTP id y6mr24638298wry.210.1635620351666;
        Sat, 30 Oct 2021 11:59:11 -0700 (PDT)
Received: from [10.8.0.130] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l8sm2212089wmc.40.2021.10.30.11.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Oct 2021 11:59:11 -0700 (PDT)
Message-ID: <8bbdf9da-6a60-f291-5e09-526bce1a6a69@gmail.com>
Date:   Sat, 30 Oct 2021 20:59:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: SEE ALSO fails
Content-Language: en-US
To:     jklowden@schemamania.org
Cc:     groff@gnu.org, Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>
References: <20211030120803.b897aa61a9d8f5c8f412253f@schemamania.org>
 <YX2GiWyH0KR5urVv@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <YX2GiWyH0KR5urVv@asta-kit.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/30/21 19:53, Ingo Schwarze wrote:
> Hi James,
> 
> James K. Lowden wrote on Sat, Oct 30, 2021 at 12:08:03PM -0400:
> 
>> A longstanding complaint of mine regarding Linux man pages is that they
>> frequently have broken SEE ALSO references.  I wonder if there's not
>> something the groff project could do to encourage packaging systems to
>> avoid such errors.
> 
> I think the basic idea expressed here is a terrible one, and we should
> better not even consider how to implement it.
> 
> In an operating system that is an operating system in the BSD sense,
> that is, consisting of a consistent and reasonably complete base system
> on the one hand and the option to install additional third-party packages
> on the other hand, these so-called "errors" do not occur in the first
> place: it is the job of the operating system maintainers to make sure
> that manual pages do not contain .Xr references to manual pages that do
> not exist in the base system, and mandoc(1) already supports authors who
> want to contribute to that goal by warning about .Xr references pointing
> into the void when it is run in -T lint mode.
> 
> In an operating system that is not an operating system in the above
> sense, for example GNU/Linux, but instead a toolbox where every user can
> pick whatever components they want and where consequently every user
> is responsible for making sure that whatever set of tools they pick
> actually results in a working operating system, such dangling links
> are unavoidable.  I have often run into Linux machines were the system
> administrator had decided to not install the most fundamental tools,
> for example where cpp(1) or make(1) were unavailable.  Heck, i have even
> bumped into Linux machines where not even man(1) was installed.
> 
> On such a system that is just a random bunch of eclectically heaped up
> components, the dangling links are not only unavoidable, but also highly
> useful.  They tell you that functionality is available out there that
> is related to the manual you are reading right now, but that you failed
> to install.  So hiding the dead links would be a blatant disservice to
> the reader, *in particular* on systems where such dead links frequently
> occur, like on Linux.

Amen to that.

I'll also quote man-pages(7) which explicitly recommends this practice:

[
               Given the distributed, autonomous nature  of  FOSS
               projects  and their documentation, it is sometimes
               necessary—and in many cases desirable—that the SEE
               ALSO  section  includes references to manual pages
               provided by other projects.
]

BTW, I yesterday patched a page to add a reference to a package that is 
rarely installed (libbsd), and I find that reference very useful.

And at least on my particular GNU/Linux system, which is Debian, it's 
easy to fix those.  I for example referenced readpassphrase(3bsd) in the 
patch mentioned above, so you'd do the following:

$ apt-file find readpassphrase.3bsd
libbsd-dev: /usr/share/man/man3/readpassphrase.3bsd.gz

And now you can install whatever you were recommended to read about. 
Otherwise, much software would be like Isla de Muerta[1].

Regards,

Alex


[...]

[1]: https://pirates.fandom.com/wiki/Quote:Hector_Barbossa

"Captain Barbossa, and his crew of miscreants, sail from the dreaded 
Isla de Muerta. It's an island that cannot be found, except by those who 
already know where it is."

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
