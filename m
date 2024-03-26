Return-Path: <linux-man+bounces-697-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A2188CBA6
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 19:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABC231F83E84
	for <lists+linux-man@lfdr.de>; Tue, 26 Mar 2024 18:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E54086AD7;
	Tue, 26 Mar 2024 18:10:13 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from relay.hostedemail.com (smtprelay0012.hostedemail.com [216.40.44.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038481CAA6
	for <linux-man@vger.kernel.org>; Tue, 26 Mar 2024 18:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=216.40.44.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711476613; cv=none; b=XVut6vmlvDK8ax8KU9XvOtZgVgeqfIdzqQv0PASBTxf3hFZqN74D0lqT9tCWkYUiy56d+Ot2UhxA0kU96vmQ1uWarKt3C2LPJ19TiT+WZ5NOXYsVAlfXuOlmkOvAbs6kOx0Ab7/fPBRKFOJaVMoYW6c+ZpjfJRNMtX7MUescV0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711476613; c=relaxed/simple;
	bh=l0oNvLp6rrdQ6QoUKiyynMsqQ07NXJpVznMimvPhUMg=;
	h=Message-ID:Date:MIME-Version:To:Cc:Subject:In-Reply-To:References:
	 From:Content-Type; b=H3cQduJIvw3BS5h9eAL/rEnsLW/E/CKQmCzgsczfeTLBOC/yq0AMIZbZiKETYyRBjOAlQzIbIQBJI0UjyVBeiaaiDGCFiVu2yWAH9f0E3ftq0mbtr+ysgy2SD83/9EMGOtHek+E5WaSfcaOQAKb3GJT4uHn64oDPFYArdqw6OW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca; spf=pass smtp.mailfrom=SystematicSW.ab.ca; arc=none smtp.client-ip=216.40.44.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=SystematicSW.ab.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=SystematicSW.ab.ca
Received: from omf02.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay04.hostedemail.com (Postfix) with ESMTP id 308161A06FD;
	Tue, 26 Mar 2024 18:10:03 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: Brian.Inglis@SystematicSW.ab.ca) by omf02.hostedemail.com (Postfix) with ESMTPA id 343C98000E;
	Tue, 26 Mar 2024 18:10:01 +0000 (UTC)
Message-ID: <47bb0480-0d74-4509-b55a-b460c460e843@SystematicSW.ab.ca>
Date: Tue, 26 Mar 2024 12:10:00 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org
Cc: branden@debian.org, deri@chuzzlewit.myzen.co.uk, alx@kernel.org
Subject: Re: man-pages PDF book: fonts
Reply-To: linux-man@vger.kernel.org
Content-Language: en-CA
In-Reply-To: <20240325041954.fofjtgghwhe4znm6@illithid>
References: <20240325041954.fofjtgghwhe4znm6@illithid>
From: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
Organization: Systematic Software
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 343C98000E
X-Rspamd-Server: rspamout02
X-Stat-Signature: siogyxneygii7sa1gf3npdej6jkhkdgo
X-Session-Marker: 427269616E2E496E676C69734053797374656D6174696353572E61622E6361
X-Session-ID: U2FsdGVkX1/izuXuKL3SkJ7t2pA4bVdII+o4uyrgPn0=
X-HE-Tag: 1711476601-477291
X-HE-Meta: U2FsdGVkX1/1yJQiPTOMne7mf1zwSx2XKB2D0sRz3pPfhSurRXxGDsq/KCyHHNYq+58pKO2lBKNw/vfkY5KmZso/qfptK7xl4BYTnetPQdO8zaY+R0Y/CEpuqMhaOwhPB8vm0Bv0ycoit+cnwmuQovTe34CVK81RB3g+nmau2UfTSIoaHN86fRvGjDQkbo6JebQsIl0ycL5VbiRu1lh2vdHqHwOTKAhvmk91/gNM8wmNfLKHBCDjLwzlzm65rVXi08rhED1tsh0J1tv0HClvuZxJnGESnubwZF4kwGIesxP0iJ0E3Iksgv3VWd8BylYvHTzdeEH3KNUgE0JapcTWUOwyjRSSj1T56bZn5s+/3ucmD+wR3sFC7zgz6lVWNuXYLtdtBx/RROkEfhcsFWwgG2rCAKQUQXScTdodM+aMsTNFIU1MmMQMRw==

On Sun, Mar 24, 2024 at 11:19:54PM -0500, G. Branden Robinson wrote:
 > At 2024-03-22T18:35:02+0100, Alejandro Colomar wrote:

Hi Branden, Alex,

>> I see that Debian provides the Tinos font in some package:
...
>> Can we similarly get the Unifont for zh_CN PDFs?

You can check what you have installed using fontconfig utilities e.g.
`fc-list :lang=zh` or Unicode points `fc-list :charset=code,beg-end,...` and 
disregarding other "complete" fallback fonts like Unifont, UnicodeBMPFallback, 
LastResort, I find I have DroidSansFallBack which I can investigate further as 
shown below.

A condensed list of code point ranges can be shown on a single line with
`fc-list -f, --format 'FORMAT'` below, but include the file name, as sometimes 
the font configuration matches fonts other than requested or expected.

Fontconfig `fc-query file` shows the same information for font files (which need 
not be installed), as shown at bottom.

The charset dump is in lines of 256 codes, 20 per word, in big-endian? order.

Using option `fc-query -b` and avoiding `fc-list -v` skip the charset dump, or 
specifying the charset element shows all ranges on a single line!

TeXlive otfinfo options allow selective dumping of info including -u, --unicode 
but appears only to handle the first 64K BMP U+0000..U+FFFF.

Python package fonttools ttx can show info including cmap table as XML .ttx 
files, but defaults output to the font directory, so if using installed font 
paths, add `-d .` or `-o font.ttx` to avoid accidents if root!

You can also view a font in the GUI `xfd -fa DroidSansFallback`: jump with the 
[+16] button, scroll with the [Next] button; these seem to skip missing code 
points, but the display shows boxes in missing positions in the displayed range.

Tinos is a Google replacement for Windows Times New Roman, and seems to be part 
of the Google Noto collection of font packages, which includes "compatible" 
noto-cjk packages, and that/they should include those shown at:

	https://fonts.google.com/?query=chinese

where you can browse each individually to access the "Get Font" then "Download 
all" [weights/variants] buttons.

As Tinos is a serif style, Noto [NO TOfu] Serif Simplified Chinese may match the 
style and meet your needs.

Of course, you then have to groff_font-ize the downloaded and installed font.

> As I understand it, GNU Unifont is a low-resolution bitmap font intended
> for terminal emulators.[2] I expect it would look offensively bad when
> typeset.

Unifoundry.com GNU Unifont by Paul Hardy, Roman Czyborra, et.al. is an OpenType 
font, without combination form glyphs, redrawn based on bitmaps and not too bad, 
compared to e.g. DroidSansFallback which has a lot of tofu, especially for those 
of us who do not know what the glyphs should look like, and just want fallbacks 
to display everything without mojibake, UnicodeBMPFallback hex, LastResort range 
glyphs, or .notdef tofu.

Examples:

$ ttx -t cmap -d . /usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf 
                Dumping 
"/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf" to 
"./DroidSansFallbackFull.ttx"...
Dumping 'cmap' table...
$ ttx -t cmap -o DroidSansFallback.ttx 
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttfDumping 
"/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf" to 
"DroidSansFallback.ttx"...
Dumping 'cmap' table...
$ otfinfo --unicode /usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf | tail
uniFF9F 29723
uniFFE0 29724
uniFFE1 29725
uniFFE2 29726
uniFFE3 29727
uniFFE4 29728
uniFFE5 29729
uniFFE6 592
uniFFFD 29730
uniFFFF 0
$ fc-list DroidSansFallback
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf: Droid Sans 
Fallback:style=Regular
$ fc-list DroidSansFallback charset
:charset=20-7e a0-a1 a4 a7-a8 aa-ab ad-b4 b6-bf c6 d0 d7-d8 de-e1 e6 e8-ea ec-ed 
f0 f2-f3 f7-fa fc fe 101 111 113 11b 126-127 12b 131-133 138 13f-142 149-14b 14d 
152-153 166-167 16b 1c0-1c3 1ce 1d0 1d2 1d4 1d6 1d8 1da 1dc 21a-21b 250-2b2 2b4 
2b7 2bb-2bc 2c7-2cd 2d0-2d1 2d8-2db 2dd-2de 2e0 2e4 300-301 303-304 306 308 
30a-30b 30f-334 339-33d 35c 361 391-3a1 3a3-3a9 3b1-3c1 3c3-3c9 401 410-44f 451 
e3f 1100-1112 1114-1115 111c-111e 1120 1122-1123 1127 1129 112b-112f 1132 1136 
1140 1147 114c 1157-1159 1184-1185 1188 1191-1192 1194 119e 11a1 11a8-11c2 
11c7-11c8 11cc 11ce 11d3 11d7 11d9 11dc-11dd 11df 11e2 11e6-11e8 11ea-11eb 11ee 
11f0-11f2 11f4 11f9 200c-2011 2013-2016 2018-2019 201c-201d 2020-2022 2025-2027 
202a-202d 2030 2032-2033 2035 203b-203c 203e 2047-2049 2074 207f 2081-2084 
20a0-20b9 2103 2105 2109 2111 2113 2116 2118 211c 2121-2122 2126 212b 2133 2135 
2153-2154 215b-215e 2160-216b 2170-2179 2190-2200 2202-2203 2205 2207-2209 
220b-220c 220f 2211 2215 2217 221a 221d-2220 2223 2225 2227-222c 222e 2234-2237 
223c-223d 2245 2248 224c 2252 2260-2261 2264-2267 226a-226b 226e-226f 2282-2287 
2295 2297 2299 22a5 22bf 22c5 2308-230b 2312 23af 2460-24b5 24d0-24e9 2500-254b 
2550-2574 2581-258f 2592-2595 25a0-25a1 25a3-25aa 25b2-25b3 25b6-25b7 25ba 
25bc-25bd 25c0-25c1 25c6-25c9 25cb 25ce-25d1 25e2-25e6 25ef 2605-2606 260e-260f 
261c 261e 2640 2642 2654-266a 266c-266d 266f 2680-2685 2701-2704 2706-2709 
270c-2727 2729-274b 274d 274f-2752 2756 2758-275e 2761-2794 2798-27af 27b1-27be 
2985-2986 3000-3003 3005-3019 301c-301f 3021-3029 3041-3094 3099-309e 30a0-30f6 
30fb-30fe 3105-3129 3131-318e 3220-3229 3231-3232 3239 327f 32a3-32a8 3303 330d 
3314 3318 3322-3323 3326-3327 332b 3336 333b 3349-334a 334d 3351 3357 337b-337e 
3380-3384 3388-33ca 33cd-33d3 33d5-33d6 33d8 33db-33dd 3400-4db5 4e00-9fa5 ac00 
d7a2-d7a3 f900-fa2d fe10-fe19 fe30-fe31 fe33-fe46 fe49-fe52 fe54-fe57 fe59-fe66 
fe68-fe6b ff01-ff5e ff61-ff9f ffe0-ffe6 fffd 10400 10428 1044d-1044f
$ fc-list -f '%{file}\n%{charset}\n' DroidSansFallback
/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf
20-7e a0-a1 a4 a7-a8 aa-ab ad-b4 b6-bf c6 d0 d7-d8 de-e1 e6 e8-ea ec-ed f0 f2-f3 
f7-fa fc fe 101 111 113 11b 126-127 12b 131-133 138 13f-142 149-14b 14d 152-153 
166-167 16b 1c0-1c3 1ce 1d0 1d2 1d4 1d6 1d8 1da 1dc 21a-21b 250-2b2 2b4 2b7 
2bb-2bc 2c7-2cd 2d0-2d1 2d8-2db 2dd-2de 2e0 2e4 300-301 303-304 306 308 30a-30b 
30f-334 339-33d 35c 361 391-3a1 3a3-3a9 3b1-3c1 3c3-3c9 401 410-44f 451 e3f 
1100-1112 1114-1115 111c-111e 1120 1122-1123 1127 1129 112b-112f 1132 1136 1140 
1147 114c 1157-1159 1184-1185 1188 1191-1192 1194 119e 11a1 11a8-11c2 11c7-11c8 
11cc 11ce 11d3 11d7 11d9 11dc-11dd 11df 11e2 11e6-11e8 11ea-11eb 11ee 11f0-11f2 
11f4 11f9 200c-2011 2013-2016 2018-2019 201c-201d 2020-2022 2025-2027 202a-202d 
2030 2032-2033 2035 203b-203c 203e 2047-2049 2074 207f 2081-2084 20a0-20b9 2103 
2105 2109 2111 2113 2116 2118 211c 2121-2122 2126 212b 2133 2135 2153-2154 
215b-215e 2160-216b 2170-2179 2190-2200 2202-2203 2205 2207-2209 220b-220c 220f 
2211 2215 2217 221a 221d-2220 2223 2225 2227-222c 222e 2234-2237 223c-223d 2245 
2248 224c 2252 2260-2261 2264-2267 226a-226b 226e-226f 2282-2287 2295 2297 2299 
22a5 22bf 22c5 2308-230b 2312 23af 2460-24b5 24d0-24e9 2500-254b 2550-2574 
2581-258f 2592-2595 25a0-25a1 25a3-25aa 25b2-25b3 25b6-25b7 25ba 25bc-25bd 
25c0-25c1 25c6-25c9 25cb 25ce-25d1 25e2-25e6 25ef 2605-2606 260e-260f 261c 261e 
2640 2642 2654-266a 266c-266d 266f 2680-2685 2701-2704 2706-2709 270c-2727 
2729-274b 274d 274f-2752 2756 2758-275e 2761-2794 2798-27af 27b1-27be 2985-2986 
3000-3003 3005-3019 301c-301f 3021-3029 3041-3094 3099-309e 30a0-30f6 30fb-30fe 
3105-3129 3131-318e 3220-3229 3231-3232 3239 327f 32a3-32a8 3303 330d 3314 3318 
3322-3323 3326-3327 332b 3336 333b 3349-334a 334d 3351 3357 337b-337e 3380-3384 
3388-33ca 33cd-33d3 33d5-33d6 33d8 33db-33dd 3400-4db5 4e00-9fa5 ac00 d7a2-d7a3 
f900-fa2d fe10-fe19 fe30-fe31 fe33-fe46 fe49-fe52 fe54-fe57 fe59-fe66 fe68-fe6b 
ff01-ff5e ff61-ff9f ffe0-ffe6 fffd 10400 10428 1044d-1044f
$ fc-list -v DroidSansFallback
Pattern has 28 elts (size 32)
	family: "Droid Sans Fallback"(s)
	familylang: "en"(s)
	style: "Regular"(s)
	stylelang: "en"(s)
	fullname: "Droid Sans Fallback"(s)
	fullnamelang: "en"(s)
	slant: 0(i)(s)
	weight: 80(f)(s)
	width: 100(f)(s)
	foundry: "1ASC"(s)
	file: "/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf"(s)
	index: 0(i)(s)
	outline: True(s)
	scalable: True(s)
	charset:
	0000: 00000000 ffffffff ffffffff 7fffffff 00000000 ffdfed93 c1810040 578d3743
	0001: 080a0002 810e08c0 000c2e07 000008c0 00000000 00000000 1555400f 00000000
	0002: 0c000000 00000000 ffff0000 ffffffff ffffffff 1897ffff 6f033f80 00000011
	0003: ffff8d5b 3e1fffff 10000000 00000002 fffe0000 fffe03fb 000003fb 00000000
	0004: ffff0002 ffffffff 0002ffff 00000000 00000000 00000000 00000000 00000000
	000e: 00000000 80000000 00000000 00000000 00000000 00000000 00000000 00000000
	0011: 7037ffff 0044fa8d 03801081 00000000 40160130 ffffff02 b2885187 02174dc4
	0020: 337bf000 582d3ce7 00000380 80100000 0000001e 03ffffff 00000000 00000000
	0021: 114a0228 00280846 78180000 03ff0fff ffff0000 ffffffff ffffffff ffffffff
	0022: e4a29bad 30f05fa9 00041120 0000ccf3 02a000fc 80000020 00000020 00000000
	0023: 00040f00 00000000 00000000 00000000 00000000 00008000 00000000 00000000
	0024: 00000000 00000000 00000000 ffffffff ffffffff 003fffff ffff0000 000003ff
	0025: ffffffff ffffffff ffff0fff 001fffff 003cfffe 34cc07fb 0003cbc3 0000807c
	0026: 5000c060 00000000 fff00005 0000b7ff 0000003f 00000000 00000000 00000000
	0027: fffff3de fffffeff 7f47afff fffffffe ff1fffff 7ffeffff 00000000 00000000
	0029: 00000000 00000000 00000000 00000000 00000060 00000000 00000000 00000000
	0030: f3ffffef 000003fe fffffffe ffffffff 7e1fffff ffffffff ffffffff 787fffff
	0031: ffffffe0 fffe03ff ffffffff ffffffff 00007fff 00000000 00000000 00000000
	0032: 00000000 020603ff 00000000 80000000 00000000 000001f8 00000000 00000000
	0033: 01102008 084008cc 00822600 78000000 ffffff1f ffffffff 396fe7ff 00000000
	0034: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0035: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0036: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0037: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0038: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0039: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0040: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0041: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0042: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0043: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0044: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0045: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0046: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0047: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0048: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0049: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004d: ffffffff ffffffff ffffffff ffffffff ffffffff 003fffff 00000000 00000000
	004e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0050: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0051: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0052: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0053: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0054: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0055: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0056: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0057: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0058: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0059: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0060: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0061: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0062: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0063: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0064: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0065: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0066: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0067: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0068: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0069: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0070: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0071: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0072: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0073: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0074: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0075: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0076: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0077: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0078: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0079: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0080: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0081: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0082: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0083: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0084: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0085: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0086: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0087: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0088: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0089: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0090: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0091: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0092: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0093: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0094: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0095: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0096: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0097: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0098: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0099: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009f: ffffffff ffffffff ffffffff ffffffff ffffffff 0000003f 00000000 00000000
	00ac: 00000001 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	00d7: 00000000 00000000 00000000 00000000 00000000 0000000c 00000000 00000000
	00f9: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	00fa: ffffffff 00003fff 00000000 00000000 00000000 00000000 00000000 00000000
	00fe: 03ff0000 fffb0000 fef7fe7f 00000f7f 00000000 00000000 00000000 00000000
	00ff: fffffffe ffffffff 7fffffff fffffffe ffffffff 00000000 00000000 2000007f
	0104: 00000001 00000100 0000e000 00000000 00000000 00000000 00000000 00000000
(s)
	lang: 
bg|fj|ho|ia|io|ja|kum|nr|om|os|ru|sel|sm|so|ss|st|sw|to|ts|uz|xh|zh-cn|zh-sg|zh-tw|zu|kj|kwm|lg|ms|ng|rn|rw|sn|za|agr|bem|cmn|hak|lzh|mhr(s)
	fontversion: 65536(i)(s)
	capability: "otlayout:cyrl otlayout:grek otlayout:hani otlayout:latn"(s)
	fontformat: "TrueType"(s)
	decorative: False(s)
	postscriptname: "DroidSansFallback"(s)
	color: False(s)
	symbol: False(s)
	variable: False(s)
	fonthashint: True(s)
	order: 0(i)(s)
	namedinstance: False(s)
	fontwrapper: "SFNT"(s)

$ fc-query -b /usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf
Pattern has 26 elts (size 32)
	family: "Droid Sans Fallback"(s)
	familylang: "en"(s)
	style: "Regular"(s)
	stylelang: "en"(s)
	fullname: "Droid Sans Fallback"(s)
	fullnamelang: "en"(s)
	slant: 0(i)(s)
	weight: 80(f)(s)
	width: 100(f)(s)
	foundry: "1ASC"(s)
	file: "/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf"(s)
	index: 0(i)(s)
	outline: True(s)
	scalable: True(s)
	fontversion: 65536(i)(s)
	capability: "otlayout:cyrl otlayout:grek otlayout:hani otlayout:latn"(s)
	fontformat: "TrueType"(s)
	decorative: False(s)
	postscriptname: "DroidSansFallback"(s)
	color: False(s)
	symbol: False(s)
	variable: False(s)
	fonthashint: True(s)
	order: 0(i)(s)
	namedinstance: False(s)
	fontwrapper: "SFNT"(s)

$ fc-query /usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf
Pattern has 28 elts (size 32)
	family: "Droid Sans Fallback"(s)
	familylang: "en"(s)
	style: "Regular"(s)
	stylelang: "en"(s)
	fullname: "Droid Sans Fallback"(s)
	fullnamelang: "en"(s)
	slant: 0(i)(s)
	weight: 80(f)(s)
	width: 100(f)(s)
	foundry: "1ASC"(s)
	file: "/usr/share/fonts/truetype/droid/DroidSansFallbackFull.ttf"(s)
	index: 0(i)(s)
	outline: True(s)
	scalable: True(s)
	charset:
	0000: 00000000 ffffffff ffffffff 7fffffff 00000000 ffdfed93 c1810040 578d3743
	0001: 080a0002 810e08c0 000c2e07 000008c0 00000000 00000000 1555400f 00000000
	0002: 0c000000 00000000 ffff0000 ffffffff ffffffff 1897ffff 6f033f80 00000011
	0003: ffff8d5b 3e1fffff 10000000 00000002 fffe0000 fffe03fb 000003fb 00000000
	0004: ffff0002 ffffffff 0002ffff 00000000 00000000 00000000 00000000 00000000
	000e: 00000000 80000000 00000000 00000000 00000000 00000000 00000000 00000000
	0011: 7037ffff 0044fa8d 03801081 00000000 40160130 ffffff02 b2885187 02174dc4
	0020: 337bf000 582d3ce7 00000380 80100000 0000001e 03ffffff 00000000 00000000
	0021: 114a0228 00280846 78180000 03ff0fff ffff0000 ffffffff ffffffff ffffffff
	0022: e4a29bad 30f05fa9 00041120 0000ccf3 02a000fc 80000020 00000020 00000000
	0023: 00040f00 00000000 00000000 00000000 00000000 00008000 00000000 00000000
	0024: 00000000 00000000 00000000 ffffffff ffffffff 003fffff ffff0000 000003ff
	0025: ffffffff ffffffff ffff0fff 001fffff 003cfffe 34cc07fb 0003cbc3 0000807c
	0026: 5000c060 00000000 fff00005 0000b7ff 0000003f 00000000 00000000 00000000
	0027: fffff3de fffffeff 7f47afff fffffffe ff1fffff 7ffeffff 00000000 00000000
	0029: 00000000 00000000 00000000 00000000 00000060 00000000 00000000 00000000
	0030: f3ffffef 000003fe fffffffe ffffffff 7e1fffff ffffffff ffffffff 787fffff
	0031: ffffffe0 fffe03ff ffffffff ffffffff 00007fff 00000000 00000000 00000000
	0032: 00000000 020603ff 00000000 80000000 00000000 000001f8 00000000 00000000
	0033: 01102008 084008cc 00822600 78000000 ffffff1f ffffffff 396fe7ff 00000000
	0034: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0035: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0036: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0037: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0038: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0039: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	003f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0040: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0041: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0042: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0043: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0044: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0045: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0046: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0047: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0048: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0049: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004d: ffffffff ffffffff ffffffff ffffffff ffffffff 003fffff 00000000 00000000
	004e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	004f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0050: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0051: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0052: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0053: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0054: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0055: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0056: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0057: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0058: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0059: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	005f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0060: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0061: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0062: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0063: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0064: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0065: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0066: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0067: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0068: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0069: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	006f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0070: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0071: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0072: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0073: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0074: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0075: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0076: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0077: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0078: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0079: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	007f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0080: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0081: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0082: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0083: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0084: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0085: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0086: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0087: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0088: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0089: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	008f: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0090: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0091: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0092: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0093: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0094: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0095: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0096: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0097: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0098: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	0099: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009a: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009b: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009c: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009d: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009e: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	009f: ffffffff ffffffff ffffffff ffffffff ffffffff 0000003f 00000000 00000000
	00ac: 00000001 00000000 00000000 00000000 00000000 00000000 00000000 00000000
	00d7: 00000000 00000000 00000000 00000000 00000000 0000000c 00000000 00000000
	00f9: ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff ffffffff
	00fa: ffffffff 00003fff 00000000 00000000 00000000 00000000 00000000 00000000
	00fe: 03ff0000 fffb0000 fef7fe7f 00000f7f 00000000 00000000 00000000 00000000
	00ff: fffffffe ffffffff 7fffffff fffffffe ffffffff 00000000 00000000 2000007f
	0104: 00000001 00000100 0000e000 00000000 00000000 00000000 00000000 00000000
(s)
	lang: 
bg|fj|ho|ia|io|ja|kum|nr|om|os|ru|sel|sm|so|ss|st|sw|to|ts|uz|xh|zh-cn|zh-sg|zh-tw|zu|kj|kwm|lg|ms|ng|rn|rw|sn|za|agr|bem|cmn|hak|lzh|mhr(s)
	fontversion: 65536(i)(s)
	capability: "otlayout:cyrl otlayout:grek otlayout:hani otlayout:latn"(s)
	fontformat: "TrueType"(s)
	decorative: False(s)
	postscriptname: "DroidSansFallback"(s)
	color: False(s)
	symbol: False(s)
	variable: False(s)
	fonthashint: True(s)
	order: 0(i)(s)
	namedinstance: False(s)
	fontwrapper: "SFNT"(s)

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

