/*
 * Copyright (c) 2015-2016 LabKey Corporation
 *
 * Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0
 */
Ext4.define("File.util.IconUtil", {
    singleton: true,

    getFontAwesomeIcon: function(extension) {
        var ext = extension !== undefined && extension !== null ? extension.toLowerCase() : null;
        if (!this._extensionMap[ext] && this._mimeMap[ext]) {
            ext = this._mimeMap[ext];
        }
        switch (ext) {
            case 'mdb':
                return 'fa fa-database';
            case 'gz':
            case 'jar':
            case 'tar':
            case 'tgz':
            case 'xar':
            case 'zip':
                return 'fa fa-file-archive-o';
            case 'audio':
                return 'fa fa-file-audio-o';
            case 'dll':
            case 'exe':
            case 'html':
            case 'iqy':
            case 'prg':
            case 'wiki':
            case 'xml':
                return 'fa fa-file-code-o';
            case 'tsv':
            case 'xls':
            case 'xlsb':
            case 'xlsm':
            case 'xlsx':
            case 'xltm':
            case 'xltx':
                return 'fa fa-file-excel-o';
            case 'image':
            case 'vsd':
                return 'fa fa-file-image-o';
            case '_deleted':
            case '_generic':
            case 'file_temporary':
                return 'fa fa-file-o';
            case 'pdf':
                return 'fa fa-file-pdf-o';
            case 'potm':
            case 'potx':
            case 'ppsm':
            case 'ppsx':
            case 'ppt':
            case 'pptm':
            case 'pptx':
                return 'fa fa-file-powerpoint-o';
            case 'log':
            case 'text':
            case 'txt':
                return 'fa fa-file-text-o';
            case 'video':
                return 'fa fa-file-video-o';
            case 'doc':
            case 'docm':
            case 'docx':
            case 'dotm':
            case 'dotx':
            case 'rtf':
                return 'fa fa-file-word-o';
            case 'folder':
                return 'fa fa-folder-o';
            case 'application':
                return 'fa fa-list-alt';
            case 'ps':
                return 'fa fa-print';
            default:
                return 'fa fa-file-o';
        }
        return 'fa fa-file-o';
    },
    _extensionMap : {
        '_deleted' : '_deleted',
        '_generic' : '_generic',
        'application' : 'application',
        'audio' : 'audio',
        'dll' : 'dll',
        'doc' : 'doc',
        'docm' : 'docm',
        'docx' : 'docx',
        'dotm' : 'dotm',
        'dotx' : 'dotx',
        'exe' : 'exe',
        'file_temporary' : 'file_temporary',
        'folder' : 'folder',
        'gz' : 'gz',
        'html' : 'html',
        'icon_folder1' : 'icon_folder1',
        'icon_folder2' : 'icon_folder2',
        'image' : 'image',
        'iqy' : 'iqy',
        'jar' : 'jar',
        'log' : 'log',
        'mdb' : 'mdb',
        'pdf' : 'pdf',
        'potm' : 'potm',
        'potx' : 'potx',
        'ppsm' : 'ppsm',
        'ppsx' : 'ppsx',
        'ppt' : 'ppt',
        'pptm' : 'pptm',
        'pptx' : 'pptx',
        'prg' : 'prg',
        'ps' : 'ps',
        'rtf' : 'rtf',
        'tar' : 'tar',
        'text' : 'text',
        'tgz' : 'tgz',
        'tsv' : 'tsv',
        'txt' : 'txt',
        'video' : 'video',
        'vsd' : 'vsd',
        'wiki' : 'wiki',
        'xar' : 'xar',
        'xls' : 'xls',
        'xlsb' : 'xlsb',
        'xlsm' : 'xlsm',
        'xlsx' : 'xlsx',
        'xltm' : 'xltm',
        'xltx' : 'xltx',
        'xml' : 'xml',
        'zip' : 'zip'
    },
    _mimeMap : {
        '323' : 'text',
        'arj' : 'application',
        'mme' : 'application',
        'boo' : 'application',
        'book' : 'application',
        'ccad' : 'application',
        'dp' : 'application',
        'drw' : 'application',
        'xl' : 'application',
        'frl' : 'application',
        'spl' : 'application',
        'vew' : 'application',
        'hta' : 'application',
        'unv' : 'application',
        'inf' : 'application',
        'acx' : 'application',
        'jar' : 'application',
        'ear' : 'application',
        'war' : 'application',
        'js' : 'text',
        'ts' : 'text',
        'hqx' : 'application',
        'mrc' : 'application',
        'mbd' : 'application',
        'aps' : 'application',
        'accdb' : 'application',
        'infopathxml' : 'application',
        'one' : 'application',
        'ppz' : 'application',
        'vsi' : 'application',
        'doc' : 'application',
        'dot' : 'application',
        'w6w' : 'application',
        'wiz' : 'application',
        'word' : 'application',
        'mzxml' : 'application',
        'mcp' : 'application',
        'a' : 'application',
        'arc' : 'application',
        'bin' : 'application',
        'com' : 'application',
        'dms' : 'application',
        'dump' : 'application',
        'exe' : 'application',
        'lhx' : 'application',
        'o' : 'application',
        'psd' : 'application',
        'saveme' : 'application',
        'zoo' : 'application',
        'oda' : 'application',
        'axs' : 'application',
        'pdf' : 'application',
        'prf' : 'application',
        'p7s' : 'application',
        'crl' : 'application',
        'ai' : 'application',
        'eps' : 'application',
        'ps' : 'application',
        'part' : 'application',
        'prt' : 'application',
        'rng' : 'application',
        'rtf' : 'application',
        'rtx' : 'application',
        'set' : 'application',
        'setpay' : 'application',
        'setreg' : 'application',
        'smi' : 'application',
        'smil' : 'application',
        'sol' : 'application',
        'sdr' : 'application',
        'step' : 'application',
        'stp' : 'application',
        'ssm' : 'application',
        'vda' : 'application',
        'edn' : 'application',
        'pdx' : 'application',
        'rmf' : 'application',
        'xdp' : 'application',
        'xfd' : 'application',
        'xfdf' : 'application',
        'fdf' : 'application',
        'kml' : 'application',
        'kmz' : 'application',
        'grv' : 'application',
        'gsa' : 'application',
        'gta' : 'application',
        'vcg' : 'application',
        'hgl' : 'application',
        'hpg' : 'application',
        'hpgl' : 'application',
        'pcl' : 'application',
        'xlb' : 'application',
        'xlc' : 'application',
        'xll' : 'application',
        'xlm' : 'application',
        'xls' : 'application',
        'xlw' : 'application',
        'eot' : 'application',
        'xlam' : 'application',
        'xlsb' : 'application',
        'xlsm' : 'application',
        'xltm' : 'application',
        'mpf' : 'application',
        'thmx' : 'application',
        'rels' : 'application',
        'sst' : 'application',
        'pko' : 'application',
        'cat' : 'application',
        'stl' : 'application',
        'pot' : 'application',
        'pot,' : 'application',
        'ppa' : 'application',
        'pps' : 'application',
        'ppt' : 'application',
        'pwz' : 'application',
        'ppam' : 'application',
        'pptm' : 'application',
        'sldm' : 'application',
        'ppsm' : 'application',
        'potm' : 'application',
        'mpp' : 'application',
        'pub' : 'application',
        'vdx' : 'application',
        'docm' : 'application',
        'dotm' : 'application',
        'wcm' : 'application',
        'wdb' : 'application',
        'wks' : 'application',
        'wps' : 'application',
        'wpl' : 'application',
        'ncm' : 'application',
        'odc' : 'application',
        'odb' : 'application',
        'odf' : 'application',
        'odg' : 'application',
        'otg' : 'application',
        'odi' : 'application',
        'odp' : 'application',
        'otp' : 'application',
        'ods' : 'application',
        'ots' : 'application',
        'odt' : 'application',
        'odm' : 'application',
        'ott' : 'application',
        'oth' : 'application',
        'oxt' : 'application',
        'pptx' : 'application',
        'sldx' : 'application',
        'ppsx' : 'application',
        'potx' : 'application',
        'xlsx' : 'application',
        'xltx' : 'application',
        'docx' : 'application',
        'dotx' : 'application',
        'rm' : 'application',
        'rnx' : 'application',
        'wmlc' : 'application',
        'wmlsc' : 'application',
        'wmlscriptc' : 'application',
        'web' : 'application',
        'vmd' : 'application',
        'vmf' : 'application',
        'wp' : 'application',
        'wp5' : 'application',
        'wp6' : 'application',
        'wpd' : 'application',
        'w60' : 'application',
        'w61' : 'application',
        'wk1' : 'application',
        'aim' : 'application',
        'aab' : 'application',
        'aam' : 'application',
        'aas' : 'application',
        'bcpio' : 'application',
        'bsh' : 'application',
        'pyc' : 'application',
        'bz' : 'application',
        'boz' : 'application',
        'bz2' : 'application',
        'cdf' : 'application',
        'vcd' : 'application',
        'cha' : 'application',
        'chat' : 'application',
        'cco' : 'application',
        'z' : 'application',
        'tgz' : 'application',
        'nsc' : 'application',
        'cpio' : 'application',
        'cpt' : 'application',
        'csh' : 'application',
        'deepv' : 'application',
        'dcr' : 'application',
        'dir' : 'application',
        'dxr' : 'application',
        'dvi' : 'application',
        'etd' : 'application',
        'elc' : 'application',
        'env' : 'application',
        'evy' : 'application',
        'es' : 'application',
        'xld' : 'application',
        'xlk' : 'application',
        'xlt' : 'application',
        'xlv' : 'application',
        'pre' : 'application',
        'gsp' : 'application',
        'gss' : 'application',
        'gtar' : 'application',
        'gz' : 'application',
        'gzip' : 'application',
        'hdf' : 'application',
        'help' : 'application',
        'imap' : 'application',
        'ima' : 'application',
        '@' : 'application',
        'ins' : 'application',
        'isp' : 'application',
        'iv' : 'application',
        'ip' : 'application',
        'iii' : 'application',
        'class' : 'application',
        'jcm' : 'application',
        'jnlp' : 'application',
        'skd' : 'application',
        'skm' : 'application',
        'skp' : 'application',
        'skt' : 'application',
        'ksh' : 'application',
        'latex' : 'application',
        'ltx' : 'application',
        'lha' : 'application',
        'lsp' : 'application',
        'ivy' : 'application',
        'wq1' : 'application',
        'lzh' : 'application',
        'lzx' : 'application',
        'mc$' : 'application',
        'mcd' : 'application',
        'mif' : 'application',
        'nix' : 'application',
        'amc' : 'application',
        'asx' : 'application',
        'mdb' : 'application',
        'application' : 'application',
        'crd' : 'application',
        'clp' : 'application',
        'dll' : 'application',
        'xla' : 'application',
        'm13' : 'application',
        'm14' : 'application',
        'mvb' : 'application',
        'mny' : 'application',
        'scd' : 'application',
        'trm' : 'application',
        'wmd' : 'application',
        'wmz' : 'application',
        'wri' : 'application',
        'ani' : 'application',
        'nvd' : 'application',
        'map' : 'application',
        'nc' : 'application',
        'pkg' : 'application',
        'omc' : 'application',
        'omcd' : 'application',
        'omcr' : 'application',
        'pm4' : 'application',
        'pm5' : 'application',
        'pma' : 'application',
        'pmc' : 'application',
        'pml' : 'application',
        'pmr' : 'application',
        'pmw' : 'application',
        'plx' : 'application',
        'p10' : 'application',
        'p12' : 'application',
        'pfx' : 'application',
        'p7b' : 'application',
        'p7r' : 'application',
        'p7c' : 'application',
        'p7m' : 'application',
        'p7a' : 'application',
        'mpc' : 'application',
        'mpt' : 'application',
        'mpv' : 'application',
        'mpx' : 'application',
        'wb1' : 'application',
        'qtl' : 'application',
        'rdb' : 'application',
        'rds' : 'application',
        'rdx' : 'application',
        'rtsp' : 'application',
        'sdp' : 'application',
        'sea' : 'application',
        'sl' : 'application',
        'sh' : 'application',
        'shar' : 'application',
        'swf' : 'application',
        'spr' : 'application',
        'sprite' : 'application',
        'sit' : 'application',
        'sv4cpio' : 'application',
        'sv4crc' : 'application',
        'tar' : 'application',
        'sbk' : 'application',
        'tcl' : 'application',
        'tex' : 'application',
        'texi' : 'application',
        'texinfo' : 'application',
        'roff' : 'application',
        't' : 'application',
        'tr' : 'application',
        'man' : 'application',
        'me' : 'application',
        'ms' : 'application',
        'avi' : 'application',
        'ustar' : 'application',
        'vsd' : 'application',
        'vst' : 'application',
        'vsw' : 'application',
        'mzz' : 'application',
        'xpix' : 'application',
        'src' : 'application',
        'wsrc' : 'application',
        'hlp' : 'application',
        'wtk' : 'application',
        'cer' : 'application',
        'crt' : 'application',
        'der' : 'application',
        'zip' : 'application',
        '3gp' : 'audio',
        '3g2' : 'audio',
        'AMR' : 'audio',
        'au' : 'audio',
        'snd' : 'audio',
        'it' : 'audio',
        'funk' : 'audio',
        'my' : 'audio',
        'pfunk' : 'audio',
        'rmi' : 'audio',
        'kar' : 'audio',
        'mid' : 'audio',
        'midi' : 'audio',
        'm2a' : 'audio',
        'mp2' : 'audio',
        'mp3' : 'audio',
        'mp4' : 'video',
        'mpa' : 'audio',
        'mpga' : 'audio',
        'ogg' : 'audio',
        's3m' : 'audio',
        'tsp' : 'audio',
        'qcp' : 'audio',
        'vox' : 'audio',
        'aac' : 'audio',
        'ac3' : 'audio',
        'aif' : 'audio',
        'aifc' : 'audio',
        'aiff' : 'audio',
        'caf' : 'audio',
        'gsd' : 'audio',
        'gsm' : 'audio',
        'jam' : 'audio',
        'lam' : 'audio',
        'xm' : 'audio',
        'm4a' : 'audio',
        'm4b' : 'audio',
        'm4p' : 'audio',
        'mod' : 'audio',
        'm3u' : 'audio',
        'wax' : 'audio',
        'wma' : 'audio',
        'la' : 'audio',
        'lma' : 'audio',
        'ram' : 'audio',
        'rmm' : 'audio',
        'rmp' : 'audio',
        'rpm' : 'audio',
        'sid' : 'audio',
        'ra' : 'audio',
        'vqf' : 'audio',
        'vqe' : 'audio',
        'vql' : 'audio',
        'mjf' : 'audio',
        'voc' : 'audio',
        'wav' : 'audio',
        'pdb' : 'chemical',
        'xyz' : 'chemical',
        'ttf' : 'font',
        'otf' : 'font',
        'bm' : 'image',
        'bmp' : 'image',
        'cod' : 'image',
        'rast' : 'image',
        'fif' : 'image',
        'flo' : 'image',
        'turbot' : 'image',
        'g3' : 'image',
        'gif' : 'image',
        'ief' : 'image',
        'iefs' : 'image',
        'jp2' : 'image',
        'jfif' : 'image',
        'jfif-tbnl' : 'image',
        'jpe' : 'image',
        'jpeg' : 'image',
        'jpg' : 'image',
        'jut' : 'image',
        'nap' : 'image',
        'naplps' : 'image',
        'nef' : 'image',
        'pic' : 'image',
        'png' : 'image',
        'x-png' : 'image',
        'svg' : 'image',
        'svgz' : 'image',
        'tif' : 'image',
        'tiff' : 'image',
        'dwg' : 'image',
        'svf' : 'image',
        'fpx' : 'image',
        'rf' : 'image',
        'rp' : 'image',
        'wbmp' : 'image',
        'xif' : 'image',
        'ras' : 'image',
        'cmx' : 'image',
        'dxf' : 'image',
        'ico' : 'image',
        'art' : 'image',
        'jps' : 'image',
        'pntg' : 'image',
        'nif' : 'image',
        'niff' : 'image',
        'pcx' : 'image',
        'pct' : 'image',
        'pict' : 'image',
        'pnm' : 'image',
        'pbm' : 'image',
        'pgm' : 'image',
        'ppm' : 'image',
        'qif' : 'image',
        'qti' : 'image',
        'qtif' : 'image',
        'rgb' : 'image',
        'sgi' : 'image',
        'targa' : 'image',
        'xbm' : 'image',
        'xpm' : 'image',
        'xwd' : 'image',
        'ivr' : 'i-world',
        'mht' : 'message',
        'mhtml' : 'message',
        'mime' : 'message',
        'nws' : 'message',
        'iges' : 'model',
        'igs' : 'model',
        'dwf' : 'model',
        'pov' : 'model',
        'pvu' : 'paleovu',
        'asp' : 'text',
        'ics' : 'text',
        'appcache' : 'text',
        'manifest' : 'text',
        'css' : 'text',
        'acgi' : 'text',
        'body' : 'text',
        'htm' : 'text',
        'html' : 'text',
        'htmls' : 'text',
        'htx' : 'text',
        'shtml' : 'text',
        'stm' : 'text',
        'uls' : 'text',
        'pas' : 'text',
        'bas' : 'text',
        'bed' : 'text',
        'c++' : 'text',
        'cc' : 'text',
        'conf' : 'text',
        'cxx' : 'text',
        'def' : 'text',
        'g' : 'text',
        'gff' : 'text',
        'gtf' : 'text',
        'h' : 'text',
        'hh' : 'text',
        'idc' : 'text',
        'list' : 'text',
        'log' : 'text',
        'lst' : 'text',
        'mar' : 'text',
        'properties' : 'text',
        'sdml' : 'text',
        'sql' : 'text',
        'text' : 'text',
        'txt' : 'text',
        'rt' : 'text',
        'sct' : 'text',
        'wsc' : 'text',
        'sgm' : 'text',
        'sgml' : 'text',
        'tsv' : 'text',
        'csv' : 'text',
        'uni' : 'text',
        'unis' : 'text',
        'uri' : 'text',
        'uris' : 'text',
        'abc' : 'text',
        'flx' : 'text',
        'wml' : 'text',
        'wmls' : 'text',
        'htt' : 'text',
        'asm' : 'text',
        's' : 'text',
        'aip' : 'text',
        'c' : 'text',
        'cpp' : 'text',
        'htc' : 'text',
        'f' : 'text',
        'f77' : 'text',
        'f90' : 'text',
        'for' : 'text',
        'jav' : 'text',
        'java' : 'text',
        'jsp' : 'text',
        'lsx' : 'text',
        'm' : 'text',
        'xml' : 'text',
        'xsl' : 'text',
        'iqy' : 'text',
        'rqy' : 'text',
        'p' : 'text',
        'hlb' : 'text',
        'el' : 'text',
        'pl' : 'text',
        'pm' : 'text',
        'py' : 'text',
        'r' : 'text',
        'rexx' : 'text',
        'tcsh' : 'text',
        'zsh' : 'text',
        'ssi' : 'text',
        'etx' : 'text',
        'spc' : 'text',
        'talk' : 'text',
        'uil' : 'text',
        'uu' : 'text',
        'uue' : 'text',
        'vcs' : 'text',
        'vcf' : 'text',
        'afl' : 'video',
        'avs' : 'video',
        'flc' : 'video',
        'm1v' : 'video',
        'm2v' : 'video',
        'mpe' : 'video',
        'mpeg' : 'video',
        'mpg' : 'video',
        'mpv2' : 'video',
        'ogv' : 'video',
        'moov' : 'video',
        'mov' : 'video',
        'qt' : 'video',
        'vdo' : 'video',
        'rv' : 'video',
        'viv' : 'video',
        'vivo' : 'video',
        'vos' : 'video',
        'webm' : 'video',
        'xdr' : 'video',
        'xsr' : 'video',
        'fmf' : 'video',
        'dl' : 'video',
        'dif' : 'video',
        'dv' : 'video',
        'fli' : 'video',
        'gl' : 'video',
        'isu' : 'video',
        'lsf' : 'video',
        'mjpg' : 'video',
        'asf' : 'video',
        'asr' : 'video',
        'avi' : 'video',
        'qtc' : 'video',
        'avx' : 'video',
        'scm' : 'video',
        'movie' : 'video',
        'mv' : 'video',
        'wmf' : 'windows',
        'ice' : 'x-conference',
        'xgz' : 'xgl',
        'xmz' : 'xgl',
        '3dm' : 'x-world',
        '3dmf' : 'x-world',
        'qd3' : 'x-world',
        'qd3d' : 'x-world',
        'svr' : 'x-world',
        'flr' : 'x-world',
        'vrml' : 'x-world',
        'wrl' : 'x-world',
        'wrz' : 'x-world',
        'xaf' : 'x-world',
        'xof' : 'x-world',
        'vrt' : 'x-world',
        'patch' : 'text',
        'bat' : 'text',
        'cmd' : 'text',
        'ipr' : 'text',
        'iml' : 'text',
        'iws' : 'text',
        'rss' : 'application'
    }

});