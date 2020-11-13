Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF0F62B18BC
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:02:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726438AbgKMKCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:02:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726222AbgKMKCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:02:38 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AD05C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:02:22 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id 23so9086332wrc.8
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=YIJEZuxK2GM7coCUgigmIFcDWXeRt1nm0iqMxTuWcM8=;
        b=fk5CuGZqG1878eKucfNOhg/HrPk/W7M6T6/5DT/5lUUQXv3UG42l8MfEDcBZot4Xe+
         Em/L5JJmVcxQHbf2DUM4ZgBYfj/bepmPPfpWPezBhMCF6qb7xdasifClugrugKXK43Ig
         GaB5Ki/X3qAjUMXhTfo/AjrYThNbKOSnK8EvTQRszWyLsjsJ0FJrzkNdAmOQRG5mSmJ6
         yy3FrFCfOlNRliNy5+N6Um7ip8rcn3+tB9Z7q8IxEzsBqlADnRgbbfSerbdAALfBOqQ9
         aKOrhdtQoMsOK7v72jas9Lbp3xApH1xcnapUibnFjWdB7rPuNwAG2SifJ8bZXidoDgaY
         n/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YIJEZuxK2GM7coCUgigmIFcDWXeRt1nm0iqMxTuWcM8=;
        b=obnc5lXa+oeFoTT/IAjM4RSThWaSbA/IMSt4n8L4NdtGjN6cdc9pTjV0u1a5ZKv+J0
         Wsj3Sem3L0uPL/sKWuMBXa+zNEjHuhd6MlkkS19nvQAI15zGEnnXKBsTqPApNfP0pGdo
         eksbOrZnmFtxZvZKPb3dtGRF8asnt88taByRO2+pA6XnR1dde5qVWMqYk8sHXqMNnQ7v
         egtCiZmu+g1F60SZmfcc4OL43Jh3Hn7/WkSZNvAOZQCdkPSw5lvKT/f4Uoqq+W4eMNvc
         5o9Ym0pzeiU80GHMg97XN3PXHlLOti9ULb5uA3pJdu6NunprTKx++Vv8j0RcLWfhXCXv
         8Wew==
X-Gm-Message-State: AOAM533tB1QaJsaOc5hyf5Y1RlCLBmBTqvX0nGsiYStOOlZzU7phCsQo
        ow+jxqUHPP24xx9PTz2ywiP2yDQN3KI=
X-Google-Smtp-Source: ABdhPJy/EXozNvd09XRVWVKcEUuzHIIC5SP7ZmPzi6bTap+6vP163Qd1MvbHYZdwALGDEF2JOf0dow==
X-Received: by 2002:adf:e983:: with SMTP id h3mr2309591wrm.382.1605261741380;
        Fri, 13 Nov 2020 02:02:21 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id t11sm3729462wrm.8.2020.11.13.02.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:02:20 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, colomar.6.4.3@gmail.com
Subject: Re: .RS
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
 <ab209b21-a93e-fd7c-e447-c8ff507cb062@gmail.com>
 <20201113093846.jzxlkw3o3pqkkr47@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7a366ad6-aee2-3139-dc8e-de2bd23cbb9c@gmail.com>
Date:   Fri, 13 Nov 2020 11:02:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201113093846.jzxlkw3o3pqkkr47@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 11/13/20 10:38 AM, G. Branden Robinson wrote:
> At 2020-11-13T09:52:06+0100, Michael Kerrisk (man-pages) wrote:
>> Hmmm -- I don't know. I was going to ask, doesn't s/>RS 4/.RS +4n/
>> fix the problem? But I see that it does not.
> 
> No, these should be synonymous.
> 
>> By the way, your comments (\") actually cause the rendered
>> output to change, as far as I can see! In particular,
>> the \" on the final .RE leads to some strangeness:
> 
> I can't reproduce that, apply Alex's changes as I understand them to the
> actual man page from Git.
> 
> I'm attaching 3 versions.  The stock page, the "Alex" approach, and the
> "Branden" approach, each tweaks only the indentation of these code
> examples in the 2-cell-indented, starrred paragraphs, and adds a C
> comment to the example to make it easy to distinguish them, since it's a
> long page and the footer is far away.
> 
>> No indent at all on the final line!
> 
> That certainly seems bizarre based on the "lorem ipsum" stuff I saw.  I
> think this may have been a patch-application error.

Hmmmm - I can't now reproduce, so I guess you are right. My bad, sorry.

> Here are my observations on the 3 attached versions.  My comparison
> method was to give each page its own maximized terminal window, "man -l"
> it, then forward-search in less(1) to "Reading results", and
> Alt+backtick in my window manager to flip between the versions.
> 
> The surrounding context of all these examples is an .IP paragraph, so
> the stock solution, and Alex's, are using .IP inside .IP.  This is not
> discouraged in man(7); it just needs to be noted.
> 
> stock:   The code example is indented 6 cells from the asterisk in its
>          parent paragraph.  Uses .IP/.in/.EX/.../.EE/.in.
> 
> alex:    The code example is indented 4 cells from the asterisk in its
>          parent paragraph.  This is because of the semantics of .RS;
>          its inset is offset from a _normal_ (.PP) paragraph, not an
>          indented one.  It's my understanding that this is compatible
>          with man(7) semantics all the way back to 1979, but it is has
>          a source of frustration to me, you, and others, and that is why
>          I have documented it so carefully in groff_man(7) and
>          groff_man_style(7).  Uses .IP/.RS 4/.EX/.../.EE/.RE.
> 
> branden: The code example is indented 2 cells from the asterisk in its
>          parent pargraph.  This may not be desirable, but on the bright
>          side the preceding .RS call has no argument.  You could use
>          another .RS/.RE pair to get further indentation, but that has
>          the undesirable properties of increasing line count and of not
>          being robust to relocation outside of an indented paragraph.
>          Uses .RS/.PP/.EX/.../.EE/.RE.

But I want the code samples to be indented 4 cells from the paragraph 
left margin (i.e., 6 cells from the asterisk in this case). So I prefer
"stock" (status quo). The semantics of .RS are indeed unfortunate.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
