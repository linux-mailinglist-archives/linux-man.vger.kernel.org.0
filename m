Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0117A6939FD
	for <lists+linux-man@lfdr.de>; Sun, 12 Feb 2023 21:47:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjBLUrg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Feb 2023 15:47:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjBLUrf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Feb 2023 15:47:35 -0500
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D719CF757
        for <linux-man@vger.kernel.org>; Sun, 12 Feb 2023 12:47:33 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id RHHdp0KDJc9C4RJG0ppZTQ; Sun, 12 Feb 2023 20:47:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676234852; bh=Lbi9x/bOlEgygXMyjxdinJ5e337xQpErF5HScftOo6M=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=jqp8DPjwgOJ4RyHKe2IiEHsM9JZomQG0fTla4XNzwiHEfmfLJZERjJ8rbRO1Jid+T
         EsZvNo+8bxT5+q/35kaBJ4jRavtqZ1elwRt0IXDgOMbIgTGcP2a8zX0UrDAheSA9Nq
         UcZrP4FplDBRnZJOxa76cuTapezvGGKeeT7Qoe9wikqzhkBrPYjm1TKJcl4ahl0xHM
         NCUW9kCcFjcxgEn3mp+AE1EfwgxzHlhFLHS5xBv9RzRk66pEZyyhkx7iaYaK2P+1kE
         jChxOlJUai46+omXmcAE1YywU3bRPJouThTvcmdLJh3mbluDroBJG0fLwTqG0ILa5o
         Nhb+fKSYhdnqA==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id RJG0pg1QYyAOeRJG0pUYmz; Sun, 12 Feb 2023 20:47:32 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e95064
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=86U1H9NdAAAA:8 a=cJvSUKa_wtWgw8kqzecA:9 a=QEXdDO2ut3YA:10
 a=3ocqyLwIp7_IhjRobAq6:22
Message-ID: <7f5bb786-b2a4-a73c-ec9e-c8126c2a2ba0@Shaw.ca>
Date:   Sun, 12 Feb 2023 13:47:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
Content-Language: en-CA
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
 <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
 <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
 <20230209113637.yifd3ojsgqameauz@jwilk.net>
 <5ad757b9-b84a-4a05-096a-d28235e7e68f@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <5ad757b9-b84a-4a05-096a-d28235e7e68f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEGCl01ewidbrtvrQh0eZCf15JdkNgkuhiQPKkXMWaVfuQyxtZ7taUTR3VjMHgRhEhjn9zlvolA712YZ+VeKVSy2gR4wvPZakSkrzeCFTdBhPTrr+lQE
 TvWKa0k7UQ+jNuqJBqpCsYpbXf47YEcWfYe2M0x99p7ORP9ohhEPLo0ghIKnHWoOHLYxd/T78VyPzLzD1R2hxDDTWK4jKKsCuWNfLuoA/rO99WNh/WHoQA5w
 5QFuOmg5Uz3vsmA4sDVGosn4YQmUZMZ41ErGdNboyP3Xl2cTi0nnQVNLh8XoIX90
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-09 05:21, Alejandro Colomar wrote:
> On 2/9/23 12:36, Jakub Wilk wrote:
>> * Brian Inglis, 2023-02-08 15:33:
>>>>> -was not less than 1,000,000,000).
>>>>> +was not less than 1G).

>>>> For nanoseconds, I think 1G is a bit weird.

>> Not only weird, but also not allowed by SI. From the brochure: "Prefix
>> symbols can neither stand alone nor be attached to the number 1".
> 
> That's in section 5.4.7 of the SI Brochure (v9) for those who don't have the context.  However, that section not only forbids 1G, but also 32G or 32Mi.  The point is that you can't attach a prefix to a number without units, because it's a prefix rather than a suffix.  According to the SI, one would have to express that as powers of 10 (or the expanded number if you prefer).

That's commonly accepted, and we are not writing scientific papers, we are 
producing docs for comsumption by international English readers, where many 
native speakers may actually be less familiar with metric units and SI conventions.
[In those financial and management areas M = 1k and MM = 1M!
And I do cringe at such common usages as 1,000kg for tonne or 1,000km for 1Mm, 
where nobody has problems with MJ/GJ/PJ for gas energy or MW/GW/PW for 
electrical power in their monthly bills!]

> However, since in the case of 32Mi-1, which is 33554431, which is 32 * 2^20 - 1, which is 2^25-1, the most readable version is 32Mi-1, I'm willing to make an exception an divert the SI in that regards.
> 
> If someone is familiar with ISO/IEC 80000-1 and could check if it allows that, it would be nice to know.

The following is available online (more recent is not publicly available between 
3. Normative References and Bibliography - To view...click on the "Buy" button. 
even for the original 80000-13:2008 Information science and technology):

	https://www.iso.org/obp/ui/#iso:std:iso:80000:-1:ed-1:v1:en

"3.8
quantity of dimension one
dimensionless quantity
quantity for which all the exponents of the factors corresponding to the base 
quantities in its quantity dimension are zero
Note 1 to entry: The term “dimensionless quantity” is commonly used and is kept 
here for historical reasons. It stems from the fact that all exponents are zero 
in the symbolic representation of the dimension for such quantities. The term 
“quantity of dimension one” reflects the convention in which the symbolic 
representation of the dimension for such quantities is the symbol 1, see Clause 
5. This dimension is not a number, but the neutral element for multiplication of 
dimensions.
Note 2 to entry: The measurement units and values of quantities of dimension one 
are numbers, but such quantities convey more information than a number.
Note 3 to entry: Some quantities of dimension one are defined as the ratios of 
two quantities of the same kind. The coherent derived unit is the number one, 
symbol 1.
EXAMPLE

Plane angle, solid angle, refractive index, relative permeability, mass 
fraction, friction factor, Mach number.
Note 4 to entry: Numbers of entities are quantities of dimension one.
EXAMPLE

Number of turns in a coil, number of molecules in a given sample, degeneracy of 
the energy levels of a quantum system.
Note 5 to entry: Adapted from ISO/IEC Guide 99:2007, definition 1.8, in which 
Notes 1 and 3 are different and in which “dimensionless quantity” is given as an 
admitted term."

	https://www.iso.org/obp/ui/#iso:std:iso-iec:guide:99:ed-1:v2:en

"1.8 (1.6)
quantity of dimension one
dimensionless quantity
quantity for which all the exponents of the factors corresponding to the base 
quantities in its quantity dimension are zero
Note 1 to entry: The term “dimensionless quantity” is commonly used and is kept 
here for historical reasons. It stems from the fact that all exponents are zero 
in the symbolic representation of the dimension for such quantities. The term 
“quantity of dimension one” reflects the convention in which the symbolic 
representation of the dimension for such quantities is the symbol 1 (see ISO 
31-0:1992, 2.2.6).
Note 2 to entry: The measurement units and values of quantities of dimension one 
are numbers, but such quantities convey more information than a number.
Note 3 to entry: Some quantities of dimension one are defined as the ratios of 
two quantities of the same kind.
EXAMPLE  1:Plane angle, solid angle, refractive index, relative permeability, 
mass fraction, friction factor, Mach number.
Note 4 to entry: Numbers of entities are quantities of dimension one.
EXAMPLE  2:Number of turns in a coil, number of molecules in a given sample, 
degeneracy of the energy levels of a quantum system."

> But in this case, we have a unit, which is seconds, and we're already
> multiplying it by nano, so G doesn't fit in the rule below.
>>> SI actually allows Gns (/nGs?)
>> Nope: "Compound prefix symbols, i.e. prefix symbols formed by the
>> juxtaposition of two or more prefix symbols, are not permitted."

May have been more flexible when introduced or in another metric system [vulgar 
fractions, GCD, LCM, and variable radix arithmetic were standard in my primary 
school - L/s/d - t/cwt/st/lb/oz - mi/fl/ch/rod/yd/ft/in - as was CGS when we got 
to decimal fractions ;^> ]

> Thanks for finding the right quotation. That was my understanding, but couldn't find it.
> This rule I'd rather follow.

No problem - would add confusion for non-metric types.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
