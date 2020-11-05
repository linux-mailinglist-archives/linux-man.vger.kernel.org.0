Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0512A8976
	for <lists+linux-man@lfdr.de>; Thu,  5 Nov 2020 23:01:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732680AbgKEWB1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Nov 2020 17:01:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732414AbgKEWB0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Nov 2020 17:01:26 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72135C0613CF
        for <linux-man@vger.kernel.org>; Thu,  5 Nov 2020 14:01:26 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id h62so3055539wme.3
        for <linux-man@vger.kernel.org>; Thu, 05 Nov 2020 14:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bs2jdQ7Snd7NGRRuD8ue+jbJvJzj+G5dIFNE46o2YzE=;
        b=CZev33Dw/kyU9ZyNzUpYVke7Mbz3wB1UdgmmBbH+3FO+Don70ZDTukYA8mFZ+MT9yK
         aziq2KsCsAvs0kaFzLewRPE4Oa3TxWN+f5RJB0y7gQf41yx11RnO/ldkpIGOvu4K48pO
         ewt5WynUnLpWs3ZeTyl75JsdMz8Pi/Gh4YiH1RplWXbIZOu5IQ1ca+a9E90l4ZxCel9W
         XkG8JgeEuETl7/lQLS5ZXtAxkj8oNnqFtApLrr9DjEhviJ7NlnfvLpAMVYn1z1p1Z6Si
         RwwWTZasR0a3ChGGRBHIrb4++WY6jdZ5n8A6w4onBLpU7H4clC147+01YCcfqSU8xrFg
         eGjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bs2jdQ7Snd7NGRRuD8ue+jbJvJzj+G5dIFNE46o2YzE=;
        b=bgqf+/UO81kMkYKYNjHX+b/m/JE2xUxScpleqsP5W6TIC+NSqJG81LEfpv8o3I8rFt
         V1Rh2Aveedw/R5GFK2mfW5GPz5XgMP5MWrhnUkzWcFk4ef2rs0KXi9wWmw2opzBW6KEL
         0+KHSxvgFQou9gdZ9gAuOau5vYKeV71ECWsFqAfM+xmCfdJoJdpAtC+D9NjPpexQyMrL
         +8lWVQt4/5BIuGQmN3CiMREzWAu+jqK92xOMDSzSEpCLiZqtgS/6OGdMI6f82dAJJ7LG
         vKkuVXfMY2rpnVA7u6PaqwvHIK5CdXvHRo0eURD0XGyAP4x4+PXqYipibV8HdeoUGUws
         lFMw==
X-Gm-Message-State: AOAM530DCRToziRocC95JO0lX7Iez9xeje4fMaNFzT+xSxAFQ/98iHNw
        qypcuMERpgtpKALK2IQb0KDUuG0Itwc=
X-Google-Smtp-Source: ABdhPJxfvle9QWOsF2ipxu3fgZKagTR/Qn9qkJ44lesB2/0Ic3mP1w5kci6TrByqoVSEm/RyDGNvug==
X-Received: by 2002:a1c:1906:: with SMTP id 6mr4727548wmz.87.1604613684781;
        Thu, 05 Nov 2020 14:01:24 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d8sm4105017wmb.11.2020.11.05.14.01.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 14:01:23 -0800 (PST)
Subject: Re: Format inline code
To:     mtk.manpages@gmail.com
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <f4a93b8c-8136-113b-d39d-72df43381fd9@gmail.com>
 <CAKgNAkhe-YN9MF2epm8_Qqi0b2Vp+YkrURQHduYz8+B6KfMiQQ@mail.gmail.com>
 <eb1afb92-9327-43e4-c4bf-6593289c9c3d@gmail.com>
 <CAKgNAkiWYUM1qg2HPRczMyd6hQFjhxPAcyRadOGZ6HLNeHuw1A@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
Date:   Thu, 5 Nov 2020 23:01:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiWYUM1qg2HPRczMyd6hQFjhxPAcyRadOGZ6HLNeHuw1A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-11-05 22:37, Michael Kerrisk (man-pages) wrote:
 >> On one hand, yes, it adds some lines of markup, i.e., a bit of noise.
 >> On the other hand, I just see .RS/.RE as {/} in C scopes:
 >> they clearly delimit logic blocks of text,
 >> and also help in greatly reducing the quantity of .IP needed,
 >> needing only .PP for most things, which simplifies logic.
 >>
 >> Choose your poison :p
 >
 > So, suppose we change this. Really, what I should have written is:
 >
 > [[
 > .TH xxx 2 yyyyy zzzzz
 > .TP
 > XXXXXXXXXX
 > .RS           <----- I moved this .RS
 > Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
 > eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
 > enim ad minim veniam, quis nostrud exercitation ullamco laboris
 > nisi ut aliquip ex ea commodo consequat.
 > .PP
 > .RS +4n
 > .EX
 > int
 > main(int argc, char *argv[])
 > {
 >      return 0;
 > }
 > .EE
 > .RE
 > .RE
 > ]]
 >
 > So, any time we have a .TP block that might have inline code (or
 > perhaps just multiple paragraphs), then the proposal is that we write
 >
 > [[
 > .TP
 > HEADWORD
 > .RS
 > ...
 > .RE
 > ]]
 >
 > But, what about the .TP blocks that contain just a single paragraph
 > and no inline code? Do we omit the .RS/.RE? That's a little
 > inconsistent and possibly confusing. On the other hand, if we add the
 > .RS/.RE to such blocks, that's a lot of clutter. Do you see what I
 > mean? It looks like there's no simple answer here.

Hi Michael,

I was just thinking about that.

.TP has a special feature:

The paragraph right after .TP will start on the same line as the TP (if 
the HEADWORD is short enough), and therefore, it doesn't even use .PP.

So it is like this (A):

[[
.TP
HEADW
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.RS           <----- I moved this .RS
.PP
Augue interdum velit euismod in pellentesque. Tristique senectus et 
netus et malesuada fames ac turpis egestas. Gravida arcu ac tortor 
dignissim convallis.
.PP
.RS +4n
.EX
int
main(int argc, char *argv[])
{
     return 0;
}
.EE
.RE
.RE
]]

[[
	HEADW	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
		eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
		enim ad minim veniam, quis nostrud exercitation ullamco laboris
		nisi ut aliquip ex ea commodo consequat.

		Augue interdum velit euismod in pellentesque.
		Tristique senectus et netus et malesuada fames ac turpis egestas.
		Gravida arcu ac tortor dignissim convallis.

		    int
		    main(int argc, char *argv[])
		    {
		        return 0;
		    }
]]

For cases with no inline code and a single paragraph,
you don't need anything at all.
For cases with 2 paragraphs or more you would start using .RS/.RE.
Yes, that's inconsistent... and I don't see a clear solution to that.

Or you could do like in system_data_types.7,
where we used .RS just after the .TP.
The difference is that in that case you force a newline,
so the first paragraph will
always start on the line after the HEADWORD (B):

[[
.TP
HEADW
.RS           <----- I moved this .RS
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.PP
Augue interdum velit euismod in pellentesque.
Tristique senectus et netus et malesuada fames ac turpis egestas.
Gravida arcu ac tortor dignissim convallis.
.PP
.RS +4n
.EX
int
main(int argc, char *argv[])
{
     return 0;
}
.EE
.RE
.RE
]]

[[
	HEADW
		Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
		eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
		enim ad minim veniam, quis nostrud exercitation ullamco laboris
		nisi ut aliquip ex ea commodo consequat.

		Augue interdum velit euismod in pellentesque.
		Tristique senectus et netus et malesuada fames ac turpis egestas.
		Gravida arcu ac tortor dignissim convallis.

		    int
		    main(int argc, char *argv[])
		    {
			return 0;
		    }
]]

In case of just one paragraph (A):

[[
.TP
HEADW
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
]]

[[
	HEADW	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
		eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
		enim ad minim veniam, quis nostrud exercitation ullamco laboris
		nisi ut aliquip ex ea commodo consequat.
]]

Or (B):

[[
.TP
HEADW
.RS           <----- I moved this .RS
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.RE
]]

[[
	HEADW
		Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
		eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
		enim ad minim veniam, quis nostrud exercitation ullamco laboris
		nisi ut aliquip ex ea commodo consequat.
]]


Do you like any of them?

Thanks,

Alex


 >
 > Thanks,
 >
 > Michael
 >
