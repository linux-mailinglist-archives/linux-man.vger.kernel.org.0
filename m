Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E487D69BDF5
	for <lists+linux-man@lfdr.de>; Sun, 19 Feb 2023 00:32:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229690AbjBRXci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 18:32:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbjBRXcf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 18:32:35 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 573911206F
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 15:32:33 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id TLRJpRmtFuZMSTWgyph6rz; Sat, 18 Feb 2023 23:32:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676763152; bh=KgPZ6FKJ8pHr+Mzy8vyU3zgfax9zVJGpWNTVzg2Txv4=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=PDZ79vHAUBV551BaLzkMTvclGxYuQg5Ls3ecX4dgd7P7zo3WaU31Id4Ryn9VVSW9k
         S7gI9UUIgdGTLUwyi6XW3zmbZ3bZYVpsRum0ejzjx4iw1YACb/uAm6IzEbXHIJq+b1
         s6cVoaO7HX+/ZkRlrLnQMDGLRSZaPxC9OnBg6YjdMP0dLcviNElt8rcL+ZtHoC2AmK
         vYHdEbSJljabhm2i+mgBiHPWWuupQfJLdYfeaHFpyoGoegh+ElelEjt+6ka6g1Gk1q
         JQIXLQzuFuKmO/Hmgwa+C3tteo69GlV4/QcB8UszlgV1L1AvhSnOmBT6WMInUd+XpP
         iwoPwqZm+YWYw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id TWgxpJYcXyAOeTWgxpjVEN; Sat, 18 Feb 2023 23:32:32 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63f16010
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=-6AI-kpKAAAA:8 a=b4LDLZbEAAAA:8 a=WV5WeHWwIfiBKVMN9c8A:9
 a=QEXdDO2ut3YA:10 a=UMVuQf7vOeEA:10 a=KGeJLd_XHnkA:10 a=gG4XnM-H38wA:10
 a=e4Znup0U9mgA:10 a=O67R8UOWOqkc2z0p0qTg:22 a=20T61YgZp4ItGotXEy2O:22
Message-ID: <877dd973-09e8-248e-2d7b-e098232b165e@Shaw.ca>
Date:   Sat, 18 Feb 2023 16:32:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
Content-Language: en-CA
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Linux Man Pages <linux-man@vger.kernel.org>,
        Tom Schwindl <schwindl@posteo.de>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
 <20230218180803.be44sughf62klrjw@illithid>
 <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
 <20230218190354.supiu6teaby5el4l@illithid>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <20230218190354.supiu6teaby5el4l@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfAj4q47SalDbg1p+/eMAlVcXHz7tUJbUH6b7v3b1cxsuLuxB170xso+NaLLXWSfb+mgyP6eeABhARBqe8SOBSKVGMMZXb05gmf1zeB9qFlR0fqFBPYlZ
 td+hrfYJl5d3eGz0X1yQhtae9TiYZ9HG5Zl0xTjUa5Zv7pH1j4RZnlJi5TjBItYNiF28NEEAkRegWk/+EYgv3NkKk7oXGcLWL/mQkV8NmAJj3MdBU1UdHEXR
 u2jmt0kunNtOozswYGSJ8HgDck0i7uvlUypkPRwa52SZaeLyHbERqCjeiALUJa67iwyZoM7Pecmp5W1171G4iw==
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-18 12:03, G. Branden Robinson wrote:
> Hi Tom,
> At 2023-02-18T18:31:25+0000, Tom Schwindl wrote:
>>> Do you expect C programmers to be more likely to copy and paste from
>>> the man page source document or from the rendered page (probably in
>>> a terminal window, but possibly from a PDF)?

>> I expect them to copy & paste from the rendered page but I thought
>> writing out "'" is a bit cumbersome so I refer to it as \[aq].

> Ahh, that can be a bit confusing without clear context.  :D

>> My "worry" with this was that new programmers could potentially
>> execute a command like the following:
>>    $ cc -D_POSIX_C_SOURCE=1993'09L test.c
>> and wonder what they did wrong.

> I see--that is a good point.  But I don't know that there is much the
> man pages can do about that issue, apart from having a better intro(1)
> page.  The scenario you imagine is an unfortunate consequence of the
> grouping character WG14 selected.
> New C programmers on *nix are going to have to develop some
> sophistication with the POSIX shell language as well, and that will be
> even more the case now--a cost of letting the Swiss win battles...
> Mainly because Alex is reading, I will point out that Ada did this, and
> several other aspects of numeric literals, right--40 years ago.

>>> Numeric literals are all introduced by an initial digit. A
>>> requirement that has long been recognized when printing numeric
>>> tables is for a character to break up long sequences of digits: in
>>> Ada, the underline character serves this purpose. In contrast to
>>> identifiers, underlines in numeric literals do not alter the meaning,
>>> so that 12_000 naturally has the same value as 12000.
>>> A simple sequence of digits is an integer literal written in decimal
>>> notation. For other bases from 2 up to 16, the base is given first
>>> and is followed by a sequence of digits enclosed by sharp characters
>>> (#) or by colons (:), the colon being used as replacement character
>>> for the sharp, but only when the sharp is not available. The enclosed
>>> digits may include the letters A to F for bases greater than ten.
>>> Thus, the conventional ways of expressing bit patterns in binary,
>>> octal, or hexadecimal are provided.
>>> Real literals must contain a period, which represents the radix
>>> point. They may be expressed in decimal notation or with other bases.
>>> Finally, both integer and real literals may include the letter E
>>> followed by an exponent.

> http://archive.adaic.com/standards/83rat/html/ratl-02-01.html#2.1
> But C programmers have long indulged in the sport of ignoring every
> lesson any other programming language had to teach, whether through
> careful design or blundering mistake.[1]  C'est la vie.

>> But thinking about it a bit longer, copy & pasting from the rendered
>> manpage might be the bigger issue.

> This prospect was a major factor in my efforts to get groff's own man
> pages much more fastidious in this respect, and to promulgate the usage
> of appropriate special characters in man page sources, an initiative
> that I'm not sure has yet taken flight, although Linux man-pages is
> rapidly improving in this regard.  The real test is whether such careful
> practice percolates elsewhere, where disinterest in (or outright
> resentment of) writing documentation, in man(7), mdoc(7), or any other
> form, is rampant.
It is sad that the documentation tools, other than man, were not made freely and 
widely available, so that the attitudes of many of the original developers 
towards providing documentation, propagated alongside the system, language, 
tools, and idioms.

We have the deliberations of IEC/ISO JTC1/SC22/WG21 C++ to thank for the 
decision a decade ago, as well as the earlier addition of user defined type 
constants, and other features, imposing restrictions on the preprocessor token 
parser capabilities, and the strong desires of the WG14 C and WG21 C++ 
committees to keep as many base features in the languages as possible in sync.
Papers on digit separators:

	https://open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3499.html
	https://open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3661.html
	https://open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3781.pdf

which C took up only in 2020-2021:

	https://open-std.org/JTC1/SC22/WG14/www/docs/n2606.pdf
	https://open-std.org/JTC1/SC22/WG14/www/docs/n2626.pdf

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
