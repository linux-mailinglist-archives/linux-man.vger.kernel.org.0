Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EA73300A0D
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 18:45:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729404AbhAVRmt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 12:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729283AbhAVRdP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 12:33:15 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC05CC0613D6
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:32:34 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id m4so5833511wrx.9
        for <linux-man@vger.kernel.org>; Fri, 22 Jan 2021 09:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=96OWAZ/QuVY28HN4xolP9Wm1Pv06b4MjjTatVsHD0pA=;
        b=OpNRgMtwZEYjEzDuc8GA4Mlv2Gt7jhx/2HX0e0jT9lJ6Nao08vWJsu7uoOHYaE0zks
         oxzm1MIvWwtkv4mbboyLL1mXU4EHA4VD7C0+ufad56B3KWdW9qZvYhnfsYMTQbMv8fN5
         Y+KaN7oCfit9YPfXzCnGJso5QWgrDURrub7L1pujPpYQsQU/Jb5Yb7qCdXndN+GNMSYX
         BNITrJgrPpSvA4lO3AD17N0mHgccnEwCBlqIlR2BZ7wXToSFQeGsw7Kx7ko+XGTjeGpB
         NOeK3yFP+WKTgSkLXUb/zUPvSiwjOHgaODEzmmvU0A1I+zMvM7hfPSbQIm8S2yUKYMbK
         J/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=96OWAZ/QuVY28HN4xolP9Wm1Pv06b4MjjTatVsHD0pA=;
        b=OGYbpRFb8kVk5ZbjKaz9bOQ4iwd6Yinwi30XrV32Vx+Bl8NOlyGXxp4EGANlgy7smp
         S0Uw0DcLAhBKS7AJvEdLJma3mj/IJMfRecgEWhI7UJXGEP4mM6a2ZkprOF2jH0KVd9Eg
         U5AmPY69DDtkbg9MXO1KT8DQqUJuHzViFXYsQ0KU79OBLc0G9G6IhfKis9DBSkJr5b/d
         fC8MM0P7S4CvLROcUS6LYcQdVTQWMul2PUa6r44u4Y9LCnoHX3RXiq8SRghXjpj+rsCP
         Zayg4NQUFm2q1QUG2WETx9DY9DGDOdggwKU/sn9YMd6zb/1f8hnCpjW4EcmKXvJ32VaK
         9gjA==
X-Gm-Message-State: AOAM532q+1LdrxsmBaeK1MLxcuY3VnXjogogXm4litleqQ9naY/C7qJ0
        bDmtma14yzkJj3Ut/MQtT4MPY/IXOCIPFiyz
X-Google-Smtp-Source: ABdhPJxc2Abq+J3FdqxHOS4FnNw/Jsr+KTpci+r3b4CX9Ld7Le+xWVATbAJ0RwMTLiLJ5p9iYYu08Q==
X-Received: by 2002:adf:dc89:: with SMTP id r9mr5567149wrj.52.1611336753475;
        Fri, 22 Jan 2021 09:32:33 -0800 (PST)
Received: from [10.8.0.134] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b18sm13296466wrm.57.2021.01.22.09.32.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 09:32:32 -0800 (PST)
Subject: Re: Correctly formatting URIs: slash
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
References: <dd390b94-1733-eca1-4a59-d16988881f9e@gmail.com>
 <20210122151204.tf7ygq324cf4zwjq@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ee39d6f4-4279-a8cc-63e7-f2f583d40659@gmail.com>
Date:   Fri, 22 Jan 2021 18:32:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210122151204.tf7ygq324cf4zwjq@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden and Michael,

On 1/22/21 4:12 PM, G. Branden Robinson wrote:
> Hi Alex!
> 
> At 2021-01-22T14:00:33+0100, Alejandro Colomar (man-pages) wrote:
>> Why do some pages use \:/ for the slash in the path part of a URL, but
>> some others don't, and just use /?
> 
> Laziness or ignorance of how URLs get typeset and what the \: escape is
> for.
> 
> URLs are typeset with hyphenation disabled.  That means that the line
> preceding a URL can
> be broken early in a very ugly way, somewhat like this sentence.
> 
> Slashes in URLs turn out to be pretty good places to break a line if it
> must be.  If you wanted a hyphen to appear at the break point, you'd use
> the "hyphenation character", an escape that goes way back to 1970s AT&T
> troff: \%.  However, as with URLs,sometimes you want a hyphenless break
> point, and that's what groff's \: is.  Heirloom Doctools troff supports
> \: as well.  mandoc 1.14.1 does not (it refuses to break URLs at all, at
> least for man(7) documents; I didn't check its mdoc(7) support).
> 
>> Moreover, why do the former use \:/ only for the path, but not for the
>> protocol?
> 
> I think it is because people feel like postponing a break by 7 more
> characters to get the first part after the schema adjacent to it is not
> too high a price to pay.
> 
> There's no deep reason why you couldn't do:
> 
> .UR http\:://www\:.w3\:.org\:/CGI
> Common Gateway Interface
> .UE
> 
> for instance.
> 
> House style for the groff man pages is to place hyphenless break points
> _before_ periods and _after_ slashes in pathnames and URLs.  The former
> point is one I'd recommend firmly to others, because it helps keep the
> reader from confusing a line-broken pathname or URL as ending a
> sentence (prematurely).  The latter convention is more arbitrary; plenty
> of perfectly valid URLs (and pathnames) exist with or without trailing
> slashes, so one can't infer the end of such an object from the presence
> or absence of a slash at the end of a line of text.

Fair enough!  I'll patch URLs to follow those conventions.

Thanks,

Alex

> 
> Regards,
> Branden
> 


-- 
--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
